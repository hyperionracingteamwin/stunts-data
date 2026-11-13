# McMurtry Spéirling PURE — Final 021
by Alain il Professore — Hyperion Racing Team · 13 November 2026

McMurtry Spéirling PURE for Stunts 1.1, with twelve paintjobs, a custom VGA cockpit, four rear lights on each LOD and multilingual documentation. Final pack 021 preserves the supplied physics and cockpit resources and includes backup-aware Windows/DOS installation and restoration scripts.

## Download and restore

[Complete distribution ZIP](PURE_FINAL_021.zip) · [Garage](https://hyperionracingteamwin.github.io/stunts-data/#mcmurtry-speirling-pure) · [DynoLab report](https://hyperionracingteamwin.github.io/stunts-data/homologation/reports/HRT_HOMOLOGATION_PURE.html) · [THE STUNG hotlap](https://youtu.be/C_zWnwk1k0o)

Close Stunts/DOSBox. Extract the complete PURE021 folder inside the Stunts game directory. On Windows run INSTALL_WIN.CMD; in DOS/DOSBox use INSTALL.BAT from PURE021. Restore with UNINSTALL_WIN.CMD or REMOVE.BAT using the same installation method. Retain PURE021, PURE_BACKUPS and PUREBAK until restoration is complete.

The ZIP is published byte-for-byte as supplied. No individual replacement resources are offered here. Native physics, moving dot, speed display, gear behaviour, animations and the closed-canopy roof were left unchanged. Original publisher installation/restoration scripts were read but not executed during this publication.

## Verification and limits

ZIP CRC passed; 39 supplied manifest hashes match. Four container lengths and resource directories, model indices (prior audit), EDES closing separator and NUL, author signature, cockpit sprite bounds and mask geometry were checked. These are structural checks, not a fresh original GAME.EXE playtest. Pack reconstruction sources reference external working dependencies; a standalone rebuild is not certified.

The source summary gives 0–100 km/h as 1.57 s; detailed protocol 04 gives 1.60 s. Both values are preserved. Bench figures are experimental CAR.RES simulation estimates, not original GAME.EXE measurements or real-world testing. The 82.90 s autonomous Restunts benchmark is distinct from the edited YouTube hotlap. The report was supplied separately and is not established as a rerun against final pack 021.

The video was produced using an earlier source geometry/RES revision. It illustrates this car, but does not certify the final-021 package as the exact car file used for filming. Twelve liveries and the current-021 cover are established from the final 3SH. Render colours are approximate; the cover is a source-derived illustration, not a screenshot. The video includes an AI-generated realistic car illustration in the credits; YouTube disclosure is enabled.

## SHA-256

`7e7ae564f5b1217fba469339c62662751c3c81cb321a0990c077f827756f8270`  PURE_FINAL_021.zip

# McMurtry Spéirling PURE — final pack 021
by Alain il Professore — 13 November 2026

## Contents and latest changes
Complete021 pack: CARPURE.RES, STDAPURE.VSH, STDBPURE.VSH and STPURE.3SH.
The3SH is byte-identical to020; RES and cockpit are unchanged016 files.
Four rear lights on each LOD, enlarged CAR0 showroom lights, gutter shades across
all12CAR0/CAR1 liveries, showroom floor-mask correction. CAR2 retains017 shading.
User edits and debris preserved. Author credit, speed-only LCD and moving dot.
Reflowed EDES uses ASCII “Speirling”: stock FONTN has no e-acute glyph.
FR/EN/RUS documentation and backup-aware Windows/DOS setup/removal included.
This release only assembles current files; no additional native edits.
See HISTORIQUE for017–020 audits. DOS and grazing views are not newly certified.
Keep old packages and backups. Installing021 backs up the current game state;
removing021 restores that previous state.

## Windows installation / removal
Close Stunts/DOSBox. Extract the entire PURE021 folder inside the game directory,
e.g. C:\GAMES\STUNTS\PURE021, and run INSTALL_WIN.CMD.
Alternatively run INSTALL_WIN.CMD "C:\GAMES\STUNTS" from a separate location.
The game folder must contain LOAD.EXE and MISC.PRE or MISC.RES and be writable.
Payload hashes are checked, old files are backed up, competing packed files are
set aside. Keep PURE021 in place: it contains the backup and installation record.
Run UNINSTALL_WIN.CMD from the same pack to restore the recorded game directory.
Original files and original absences are restored; PURE_BACKUPS is retained.
Later edits block Windows removal. Save your edit elsewhere, restore the supplied
file, then retry. No game-wide configuration or unrelated car is changed.

## DOS / DOSBox
Put PURE021 directly inside STUNTS. Enter CD PURE021, then INSTALL.BAT.
To restore, enter CD PURE021 and REMOVE.BAT. Use one installation method only.
Keep PUREBAK. Save manual edits before DOS removal: it restores the originals.
After removal, archive/rename PUREBAK before reinstalling. DOS batch syntax was
checked; actual DOS execution was not tested.

## Profile and validation
Author-selected Wikipedia profile: displayed900kg, reference745kW,190mph;
ported-engine0–60mph measured1.55s at20Hz without rollout. Native inertia13 is
not kilograms. This differs from the manufacturer's1350kg production2026 PURE.
The torque envelope and fan grip are approximations; grip524 is unchanged.
Ported tests do not certify DOS operation or real-world performance. Existing
3SH painter-order limitations remain at grazing views. Windows installation and
restoration are tested in isolated fixtures, never in the installed game.
See VALIDATION_INSTALLATION.json, PAYLOAD_SHA256.json and SHA256SUMS.json.
Read CHANGELOG_EN.md and EDES_AVANT_APRES.md for changes.

Sources: https://en.wikipedia.org/wiki/McMurtry_Sp%C3%A9irling ;
https://mcmurtry.com/speirling-pure/ ; https://www.ehelix.com/communication/helix-delivers-ev-technology-for-mcmurtry-automotive/
