#!/usr/bin/env python3
"""Upgrade the published VMET.zip to the exact user-supplied VMET FINAL.zip.

Small verified ZIP delta, with byte-for-byte SHA-256 checks and no recompression.
"""
import base64
import hashlib
import io
import json
import struct
import zlib
import zipfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
ARCHIVE = HERE / "VMET.zip"


def patch(blob, updates):
    for offset, value in updates:
        blob[offset] = value
    return blob


def records(raw):
    with zipfile.ZipFile(io.BytesIO(raw)) as archive:
        files = sorted(archive.infolist(), key=lambda x: x.header_offset)
        local = {entry.filename: raw[entry.header_offset:(files[i + 1].header_offset if i + 1 < len(files) else archive.start_dir)] for i, entry in enumerate(files)}
        central, offset = {}, archive.start_dir
        for _ in files:
            assert raw[offset:offset + 4] == b"PK\x01\x02"
            info = struct.unpack_from("<IHHHHHHIIIHHHHHII", raw, offset)
            length = 46 + sum(info[10:13])
            record = raw[offset:offset + length]
            name = record[46:46 + info[10]].decode("utf-8")
            central[name] = record
            offset += length
        return local, central, raw[offset:]


def main():
    payload = "".join((HERE / "final_delta" / f"{i}.txt").read_text(encoding="ascii") for i in range(3))
    delta = json.loads(zlib.decompress(base64.b85decode(payload)).decode("utf-8"))
    source = ARCHIVE.read_bytes()
    actual = hashlib.sha256(source).hexdigest()
    if actual == delta["sha256"]:
        print("Already updated and verified:", actual)
        return
    if actual != delta["oldsha"]:
        raise SystemExit("Unknown VMET.zip version; refusing to overwrite")
    local, central, end = records(source)
    target = bytearray()
    offsets = {}
    for name in delta["order"]:
        offsets[name] = len(target)
        if name in delta["changed"]:
            target.extend(base64.b85decode(delta["changed"][name]))
        else:
            target.extend(patch(bytearray(local[name]), delta["patches"][name]))
    for name in delta["order"]:
        entry = patch(bytearray(central[name]), delta["central"][name])
        struct.pack_into("<I", entry, 42, offsets[name])
        target.extend(entry)
    target.extend(patch(bytearray(end), delta["eoc"]))
    checksum = hashlib.sha256(target).hexdigest()
    if checksum != delta["sha256"]:
        raise SystemExit("Reconstructed ZIP does not match supplied archive: " + checksum)
    with zipfile.ZipFile(io.BytesIO(target)) as archive:
        assert archive.testzip() is None, "ZIP checksum error"
        assert len(archive.infolist()) == 20, "Unexpected ZIP contents"
    ARCHIVE.write_bytes(target)
    print("Exact original VMET FINAL.zip published:", len(target), "bytes / SHA-256", checksum)


if __name__ == "__main__":
    main()
