# Changelog — Alpine A110

## 1.0 — 27 October 2026 — final packaging

- Bundled the four final supplied resources without altering their contents.
- Added INSTALL.BAT and UNINST.BAT, targeting the parent game directory only.
- Back up existing A110 files and record which files were originally absent.
- Temporarily remove competing PRE/P3S/PVS resources; restore them on uninstall.
- Protect the original backup against repeated installation.
- Retain backup data for restoration if installation is interrupted.
- DOS 8.3 folder, script and game resource names, plus a Windows branch that locates its own folder.
- French/English README and changelog files, plus SHA-256 integrity hashes.

## Included cockpit and resource development

- Custom Alpine cockpit and three manually retouched steering-wheel states.
- Fixed scanline displacement after importing bitmaps whose widths were not multiples of four.
- Padded wheel images to 144 pixels without stretching; restored affected images.
- Reduced dash height from 112 to 92 pixels and moved the upper 20 rows into the refreshed layer.
- Removed the dummy roof associated with a frozen line; prepared the starting-message refresh fix.
- Added a small three-pixel cyan steering marker with matching mask and erase buffers.
- Recalibrated its path along the middle of the wheel rim thickness.
- Added clutch, brake and accelerator pedals to the footwell.
- Removed the idle bellows and knob from dash; show them through the gear-change resources.
- Removed the knob stem and shortened its travel near the top of the bellows.
- Integrated the latest manual dash cleanup removing an artefact in the gear-lever area.
- Included the final supplied STA110.3SH: car0/car1/car2 and exp0/exp1/exp2/exp3.
- Preserved the supplied CAR resource name, specifications and “by Alain il Professore” credit.

Modified knob coordinates may affect gear-change duration.
File and conversion checks do not replace a test in the DOS game.
