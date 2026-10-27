# 05 — Nissan Maxima Drift Wagon (CARNIMA)

**Hyperion Racing Team · Stunts 1.1 VGA · by Alain il Professore**  
**Version:** NIMA V08 (27 October 2026)  
**Publication status:** release page prepared; **final ZIP not yet available from this repository**. Do not present this page as a downloadable release until the validated archive has been uploaded.

## The car

A Japanese drift-inspired Nissan Maxima racing wagon, with a detailed native Stunts 3D body, a photographic cockpit and engine tune inspired by an extrapolated RB26DETT setup of approximately 400 PS / 440 Nm. This is a fictional simulation tune, not a measured dyno figure. The body includes a closed smoked-glass sunroof, fender mirrors, yellowish headlights, amber indicators, prominent rear flares, a contrast-safe anthracite splitter and the upright number 68.

Eleven native paint jobs: the original eight plus **Pachinko Silver**, **Golden Streets** and **Cyberpunk Cyan Blue**, each with coordinated native wheel-material triplets.

## Sakura crash

In V08, the four native `exp0`–`exp3` debris shapes are small folded pink/white sakura petals rather than oversized car panels. The ordinary game engine still controls particle movement and duration. This is **3D crash debris**, not perpetual cherry-blossom weather and not the shared 2D explosion flash.

## Cockpit and steering

The cockpit includes the driving wheel, visible gauges, a static turbo gauge, a static hydraulic handbrake and a photographed gearshift. The yellow steering marker uses a recalibrated `CARNIMA.RES` steering table: 31 stored positions, displayed as 61 positions using horizontal reflection. Source audits report at most 1.04 VGA pixels of deviation from the measured midline of the wheel rim. This is a resource audit, not a full gameplay test.

## Technical files

Inside the supplied complete V08 package, the `NIMADATA` directory includes:

| File | Role |
|---|---|
| `CARNIMA.RES` | Car specifications, physics and steering marker coordinates |
| `STNIMA.3SH` | Three car models, material lists, four sakura crash shapes |
| `STDANIMA.VSH` | Native cockpit/dashboard graphics |
| `STDBNIMA.VSH` | Additional dashboard resources |

The package also includes `NIMAINST.BAT`, `NIMAUNIN.BAT`, English/French documentation, development sources, audits, previews and SHA-256 checksums.

## Installation — once the final pack is published

1. Extract the ZIP with its single enclosing `NIMA_DRIFT_WAGON_V08_COMPLETE` folder.
2. Put that folder **inside your own Stunts folder**; for example `C:\\STUNTS\\NIMA_DRIFT_WAGON_V08_COMPLETE\\NIMAINST.BAT`.
3. Close Stunts and run `NIMAINST.BAT` from this folder (Windows or DOS/DOSBox command environment as documented in the package).
4. The installer copies the four NIMADATA resources to the **parent Stunts directory** and backs up original matching resources in `NIMABAK`.
5. To reverse the installation, run `NIMAUNIN.BAT` from the same pack folder.

Do not rename or manually relocate the scripts away from their complete package folder. Keep the original game and the backup directory. Stunts is **not** bundled.

## Preserved native behavior and validation scope

- Rear brake lights: special selector material 45 causes native rendering with material 46 at rest or 47 under braking, across all three car models and 11 paint lists.
- Resource tests in the supplied original V08 documentation: 4,224 petal cases, 3,168 car cases, 66 braking cases and 88 mixed car/debris scenes, at most 233 polygons of the native 400-polygon queue in those test scenes.
- Filesystem installation/restore simulation reported PASS; **real CMD/DOSBox execution and a complete in-game test were not performed** in the source release audit.

## Release provenance and next step

The latest submitted archive is `NIMA_DRIFT_WAGON_V08_COMPLETE(4).zip` (7,838,076 bytes), following updated V08 variants and a separately supplied `STNIMA.3SH`. An earlier generated V08 complete ZIP is 7,838,043 bytes. These are **not byte-identical**; the newer archive must take precedence. The current interface could identify the latest upload but could not retrieve its binary contents for an integrity check or GitHub upload. Do **not** substitute the older ZIP or invent a SHA-256 for the newer one.

**To complete publication:** transfer the exact latest ZIP to `packs/nissan-maxima-drift-wagon/`, generate a true 320 × 200 indexed VGA cover from the supplied promotional image, verify download and installation structure, then activate the live download button and update `catalog.json`.

---
*Project documentation carried over from the 27 October 2026 CARNIMA development and publication conversations.*
