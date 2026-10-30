# HRT Homologation — TOP STUNTS / The Stung

This section of the Hyperion Racing Team GitHub Pages website is the growing car test catalogue for **Stunts DynoLab** and the mysterious virtual driver **The Stung**.

- Public index: `homologation/index.html`
- Original reports: `homologation/reports/*.html`
- Optional video and fallback metadata: `homologation/catalog.json`
- Test track: `TOPSTNT.TRK`

## Publish another homologation report / Ajouter un rapport

1. Export the completed report from Stunts DynoLab as HTML, e.g. `HRT_HOMOLOGATION_CYBT.html`.
2. Add that exact file to `homologation/reports/` in the repository's **main** branch.
3. GitHub Pages serves the file as a standalone report. The catalogue refreshes at page load (or via the Refresh button) and discovers new HTML reports from GitHub's public repository tree, then reads the HTML to extract the model, four-character code, category, tests and lap stats.
4. There is no need to edit the garage home page each time.

The automatic report reader expects the same DynoLab report format as the first Acura NSX export: `header h1` for the name, `header p` containing the code/category/date, `.stat small` and `.stat b` for summary metrics, and the detailed protocols in `tbody tr`. Other layouts may require updating the parser.

If GitHub's public API is rate-limited or offline, the page falls back to the entries stored in `homologation/catalog.json`. For reliable fallback, add the new report's key numbers to that manifest as well.

## Associate a video / Associer une vidéo YouTube

In `homologation/catalog.json`, set the actual public video's URL (never a placeholder URL):

```json
{
  "youtubeUrl": "https://www.youtube.com/watch?v=REAL_VIDEO_ID",
  "reports": [
    {
      "code": "ANSX",
      "youtubeUrl": "https://www.youtube.com/watch?v=REAL_VIDEO_ID"
    }
  ]
}
```

The code above is an **illustration only**. Replace the example URLs with the real YouTube link; preserve all other JSON fields in the actual file. `youtubeUrl` at the root controls the featured The Stung video; the per-report `youtubeUrl` controls that vehicle's row. Until populated, the featured button opens the Hyperion Racing Team channel, and the individual video column says **Link pending**.

## Data integrity / Intégrité des mesures

Homologation numbers are extracted from uploaded DynoLab HTML test reports. The technical bench simulation is experimental and not equivalent to a measurement inside Stunts GAME.EXE. The TOP STUNTS lap result is produced by the autonomous Restunts run documented in the report. The Stung is the **fictional virtual driver identity** used to present the programme. The source HTML report remains available unchanged apart from its breadcrumb back link.

First report: **Acura NSX — ANSX**, 30 October 2026, 7/7 tests, **152.30 s** on `TOPSTNT.TRK`, replay reference `LANSX001.RPL`. The RPL itself is not included in the HTML report and should not be advertised as downloadable without a separate upload.

_By Alain il Professore · Hyperion Racing Team._
