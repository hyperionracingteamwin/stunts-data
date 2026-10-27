# Alpine A110 1600 S — final pack 1.0

A custom car for Stunts / 4D Sports Driving by **Alain il Professore**.
Package date: 27 October 2026. Car ID: `A110`.

## Windows installation

1. Close Stunts and DOSBox.
2. Extract the ZIP, which contains the **ALP_A110** folder.
3. Place this folder directly inside your Stunts game directory.
   Example: `C:\STUNTS\ALP_A110\INSTALL.BAT`.
4. Open ALP_A110 and double-click **INSTALL.BAT**.
5. Start Stunts and select **Alpine A110 1600 S (1970)**.

The four files in FILES are copied into the parent Stunts directory.
Keep ALP_A110 in this location so that you can uninstall later.
Administrator rights are unnecessary when the game directory is writable.

## DOSBox installation

Mount the Stunts directory, then enter:

```text
C:
CD ALP_A110
INSTALL
```

Mount the game directory containing ALP_A110, not just the pack itself.
Folder and script names follow the DOS 8.3 convention. The DOS branch uses
classic commands; it does not require `setlocal` or PowerShell.

## Uninstalling and restoring previous files

Close the game and run **UNINST.BAT** from the same ALP_A110 folder.
In DOSBox, enter `CD ALP_A110`, then `UNINST`.

- A110 files present before installation are restored.
- A110 files originally absent are removed from the game directory.
- Backed-up compressed alternatives are restored as well.
- Other cars, tracks, replays, music and settings are untouched.
- The FILES folder and package documentation remain available.

BACKUP holds your local originals; ACTIVE.TAG records the installation.
Do not move, rename or delete these items while the pack is installed.
Successful restoration removes the used backup files and state markers.
You can then reinstall. A second active installation is refused to protect the
original backup. To update: uninstall, replace the pack folder, then install again.

If installation stops after game changes begin, retain BACKUP and all TAG files,
then run UNINST.BAT to restore the previous state before retrying. Uninstall
stops before changing game files if the recorded backup is incomplete.
For write-protection errors, close the game and make its directory writable
before retrying restoration. Avoid editing the installed A110 files between
installation and uninstallation: restoration reinstates the backed-up versions.

## Contents and loading priorities

| File | Purpose |
| --- | --- |
| CARA110.RES | Name, specifications, driving parameters and instrument coordinates |
| STA110.3SH | car0/car1/car2 3D models and four explosion shapes |
| STDAA110.VSH | Cockpit, three steering-wheel states, pedals, instruments and shifting background |
| STDBA110.VSH | Gear knob, masks, cyan steering marker and digits |

Any existing CARA110.PRE, STA110.P3S, STDAA110.PVS and STDBA110.PVS are
backed up and temporarily removed to prevent loading conflicts. Uninstall
restores them. No global game files are replaced. This package includes no
original game, music replacement or track.

French/English changelogs, the French README and SHA256SUMS.txt are included.
The latter records the integrity hashes of the distributed files.

## Final cockpit features

- Three fixed pedals: clutch, brake and accelerator.
- Gear bellows and knob appear during shifts and are absent from the idle background.
- Stemless knob with a compact path near the top of the bellows.
- Small cyan marker on the wheel rim, retaining the final calibration.
- 320 × 92-pixel dash, including the latest supplied manual cleanup.

The supplied specification screen states: 1970, 1,565 cc, 125 hp DIN, five gears,
rear engine, 685 kg, 215 km/h catalogue speed and eleven paintjobs. These are
the data displayed by the supplied resource; its torque curve is explicitly
described as reconstructed. Knob travel affects shift duration in Stunts:
the shorter path may slightly change performance and older replay compatibility.

## Validation and limitations

All four final supplied resources are included byte for byte. Their containers
were checked and both VSH files pass the native conversion routine.
Installation and restoration scenarios were verified by script simulation.
The pack has not been executed in Windows CMD or DOSBox here; a final DOS-game
check of the cockpit, 3D viewing angles and animation is still required.
