# 09 · Volkswagen Meteor Copa Truck 2026 — VMET FINAL

by **Alain il Professore — Hyperion Racing Team**, 1 November 2026.

[Download the complete original VMET.zip](VMET.zip) · [Backup browser downloader](download.html) · [Stunts Mod Garage](../../index.html#volkswagen-meteor-copa-truck)

## What's inside

This is the exact supplied ZIP (**46,129 bytes, 20 entries**) with four native Stunts 1.1 VGA resources: `CARVMET.RES`, `STVMET.3SH`, `STDAVMET.VSH`, `STDBVMET.VSH`. It also contains reversible installation tools for Windows and DOS/DOSBox, English/French/Russian guides and changelogs, and a native geometry audit.

The Volkswagen Meteor is modeled as a **2026 Copa Truck racing vehicle**, not a road-going freight truck. The final uploaded archive retains the V2 rear-cab brake-lamp fix and **16 paintjobs**, and contains a **new `STVMET.3SH` 3D model and updated `CARVMET.RES` physics**. The dashboard files `STDAVMET.VSH` and `STDBVMET.VSH` are unchanged from the preceding release.

## Installation (English)

1. Close Stunts and back up your files.
2. Extract the archive contents into a new folder named `VMETC26` **inside** the Stunts folder (e.g. `C:\STUNTS\VMETC26\`).
3. Windows: run `INSTWIN.CMD` in that folder. DOSBox: enter that folder and run `INSTDOS`.
4. The installer stores any existing VMET resources in `VMETC26\BACKUP` and moves competing P3S/PVS resources aside.
5. Start Stunts 1.1 VGA and choose VMET. To uninstall and restore previous resources, use `UNWIN.CMD` (Windows) or `UNDDOS` (DOSBox). Keep the BACKUP folder until restoration.

## Installation (français)

1. Fermez Stunts et sauvegardez vos fichiers.
2. Décompressez le contenu de l'archive dans le dossier `VMETC26`, placé **dans le répertoire du jeu** (exemple : `C:\STUNTS\VMETC26\`).
3. Sous Windows, lancez `INSTWIN.CMD`; sous DOS ou DOSBox, lancez `INSTDOS` après avoir ouvert ce dossier.
4. L'installateur sauvegarde les ressources remplacées dans `VMETC26\BACKUP` et écarte les variantes P3S/PVS concurrentes.
5. Pour désinstaller et restaurer, lancez `UNWIN.CMD` ou `UNDDOS`. Conservez les sauvegardes tant que la restauration n'est pas effectuée.

La validation des fichiers binaires est réussie ; **le test de conduite sous Stunts/DOSBox reste à réaliser**, notamment pour les feux arrière selon les angles.

## Credits

Created by **Alain il Professore** for Hyperion Racing Team. Special thanks to **Victor Narl** for the challenge and **Ryoma** for Stunts modeling advice.

SHA-256 of the exact, unmodified uploaded **VMET FINAL.zip** (published as `VMET.zip`): `5a880710445578f25f3b560dc0a102dfdbb006fb9123696f574605799bdded89`.

Updated resource hashes: `CARVMET.RES` — `d216f44f57ee5c96b979265c8a8f18c7b2dc9aaba50166aba332fe8d7fa6cbe9`; `STVMET.3SH` — `3dd206eb63d2370f2e4ef029902af904eaf3717313c29cf18a428d67eeb25d18`.

**Note:** the creator ZIP's bundled `HASHES.TXT`, `AUDIT.JSN` and historic changelogs were preserved exactly as supplied and refer to the earlier geometry/physics; use the hashes above for the final updated resources.

The legacy `parts/` directory documents the former V2 transfer; it is **not** the current release. To publish the final ZIP byte-for-byte without changing unrelated resources, `update_vmet_final.py` applies a compact verified delta from `final_delta/` to the previously released archive. GitHub Actions validates the exact final SHA-256 before committing `VMET.zip`.
