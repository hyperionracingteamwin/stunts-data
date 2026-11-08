# Aptera Solar EV — APTR · Stunts 1.1

**Edition:** 1.0 release candidate · V69 exterior / V68 cockpit  
**Date:** 8 November 2026  
**Creator:** Alain il Professore — Hyperion Racing Team  
**Languages in ZIP:** English, French, Russian

[Download Aptera ZIP](./APTERA_APTR_V69_RC.zip) · [DynoLab homologation report](../../homologation/reports/HRT_HOMOLOGATION_APTR.html) · [Watch THE STUNG's Aptera video test](https://youtu.be/1kbZB-w-qUY)

## Included in the source ZIP

- `CARAPTR.RES`: simulated handling and in-game technical descriptions.
- `STAPTR.3SH`: V69 3D model, 3 levels of detail, eight paintjobs and crash parts.
- `STDAAPTR.VSH`: V68 VGA cockpit, digital gauges, anthracite roof.
- `STDBAPTR.VSH`: speed digits and steering marker.
- Windows and DOS installers/uninstallers, original FR/EN/RU readmes and changelogs, SHA-256 manifest, and `AUDIT_PACK_FINAL.json`.

## Install and uninstall

Unzip into your Stunts 1.1 root so that `STUNTS/APTERA/FILES/CARAPTR.RES` exists.

**Windows:** run `APTERA/INSTALL.CMD`. To reverse, run `APTERA/UNINST.CMD`.  
**DOS/DOSBox:** from `C:\\APTERA`, run `INSTALL.BAT`; reverse with `UNINST.BAT`.

Keep `APTERA/BACKUP` until any previous files have been restored. Back up your game first and close Stunts before installing.

## Provenance and test status

The exact user-supplied ZIP is preserved unchanged (34,994 bytes, 16 entries). SHA-256:
`27ce3bbb2728ad68e29bc49251be5fe8cc9172695905f795b03bf8e035df246c`

The included binary audit validates resource headers, three LODs and eight paintjobs, but **does not certify a complete game-runtime or installer test**. This is a release candidate. Report figures derive from the supplied DynoLab HTML; bench power/speed are estimates of the game's CAR resource. The report's TOPSTUNTS lap is 133.90 s and refers to replay `LAPTR001.RPL`, which **is not included** in this ZIP. Actual electricity consumption has **not** been measured.

This is an independent fan mod and is not officially associated with Aptera Motors or the Stunts rights holders.
