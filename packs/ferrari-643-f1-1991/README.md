# Ferrari 643 F1 1991 — F643 · V14

By Alain il Professore — Hyperion Racing Team · 11 November 2026

[Download original V14 ZIP](./FERRARI_643_F1_1991_V14.zip) · [DynoLab benchmark](../../homologation/reports/HRT_HOMOLOGATION_F643.html) · [Watch THE STUNG](https://youtu.be/r-lxtuEWlEw) · [Benchmark replay](../../homologation/replays/LF643001.RPL)

![Ferrari 643 VGA render](./cover.png)

The supplied ZIP includes CARF643.RES, STF643.3SH, STDAF643.VSH and STDBF643.VSH, eleven paintjobs, Windows/DOS installation and restoration scripts, English/French/Russian documentation, development sources, audits and the original V13 resources.

V14 adjusts helmet sorting and prevents competing cockpit refresh rectangles from erasing the gear display. The source audit states that physics and gear ratios are byte-identical to V13. Native projection and cockpit compositions are static checks; the archive does not claim a new full V14 DOSBox playtest.

## Install and restore

Extract FERRARI_643_F1_1991_V14 as a subfolder of Stunts. Close the game. Run INSTALL_WIN.CMD on Windows or INSTALL.BAT from the package folder in DOS/DOSBox. Restore with REMOVE_WIN.CMD or REMOVE.BAT. Install all four resources together and retain backups.

## Benchmark and video

The supplied STUNTS DYNO LAB V4 report is dated 11 November 2026. It records seven completed protocols, zero missed targets and an autonomous Restunts lap of **105.55 s (1:45.55)** on TOPSTNT.TRK, referencing LF643001.RPL. Peak lap speed: 190.7 mph; average: 118.5 mph. The source replay is hosted separately, unchanged; this publication did not rerun the benchmark.

Estimated bench V-Max: 331.01 km/h (331.0 in the summary); estimated power: 1,468 ch. The source summary gives 0–100 km/h as **2.16 s**, while detailed protocol 04 gives **2.20 s**. Both remain unchanged. Bench model estimates and the autonomous lap are different methods; the YouTube video is linked without assigning it the autonomous benchmark time.

## Source integrity and thumbnail

The original user-supplied ZIP is preserved byte for byte: 4,233,573 bytes, 54 entries. SHA-256: `fb6550394cea48327bf7463dc2f1835c1bc7388190d329d12c4e3ff3682cfb72`.

52 entries in CONTENTS_SHA256.txt match. CARF643.RES differs from the hash recorded in both CONTENTS_SHA256.txt and AUDIT_V14.json; its actual SHA-256 is `2368a60a1b2751a76d99f3491b2b061b61aabe66f69b07453c5b64f800933ef3`. This mismatch is caused by an expanded in-game description: restoring the V13 description reproduces the expected manifest hash exactly. The first 524 simulation bytes remain identical to V13. The three current graphics binaries match their audit hashes. The ZIP and its internal records are preserved unchanged, with this discrepancy documented separately.

The 320 × 200 PNG and BMP are indexed 8-bit images with a 256-entry palette. The car is rendered from the supplied, unchanged car0 geometry and paintjob 0 using the included native projection queue and Stressed palette/material tables. The circuit background is illustrative; this image is not a DOSBox screenshot.
