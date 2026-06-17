# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

GT Liberation is an SQF mission framework for Arma 3 — a large-scale persistent co-op "Capture the Island" campaign. It's a fork of KP Liberation (KillahPotatoes), itself a continuation of GreuhZbug's original Liberation mission. There is no application server or runtime here in the traditional sense; the "build" produces Arma 3 mission PBOs that are loaded by the Arma 3 game/dedicated server engine.

## Build commands

The build tooling lives in `_tools/` (Node/TypeScript + gulp) and assembles mission folders for each supported map.

```bash
cd _tools
npm install
npm run build        # runs default gulp task: clean -> build -> pbo -> zip
npx gulp <task>       # run an individual task
```

Individual gulp tasks (see `_tools/README.md`):
- `clean` — removes `build/`
- `build` — copies `Missionframework` + a map's `mission.sqm` into `build/`, then rewrites variables in `kp_liberation_config.sqf` per preset
- `pbo` — packs each assembled mission folder into a `.pbo`
- `zip` — creates release zip archives
- `workshop` — uploads built PBOs to the Steam Workshop

On Windows, `build.bat` (repo root) does `npm install` + `npx gulp` automatically.

There is no test suite, linter, or single-test command in this repo — verification is done by loading the built mission in Arma 3 and playing it (see CI below, which only builds artifacts, it doesn't run tests).

CI (`.github/workflows/main.yml`) runs on every push/PR: installs deps in `_tools` and runs `npx gulp` to produce PBO artifacts, on `node:10-alpine`.

## Architecture

### Two-part source layout, merged at build time

- `Missionframework/` — the actual mission logic: all SQF scripts, functions, configs, UI, stringtable, presets. This is **shared across every map**.
- `Missionbasefiles/kp_liberation.<Map>/` — per-map folder containing only `mission.sqm` (the Eden-editor-placed objects/markers/positions for that map). One folder per supported terrain (Altis, Chernarus, Tanoa, Malden, etc.).
- `_tools/_presets.json` — declares which `(sourceFolder, missionName, map)` combinations to build, plus a `variables` map of `kp_liberation_config.sqf` overrides (faction presets) injected per-build via `gulp-replace`.

The gulp build (`_tools/gulpfile.ts`) generates one task per preset entry: copy `Missionframework/**` → output dir, copy that map's `mission.sqm` → output dir, then string-replace the listed config variables in the copied `kp_liberation_config.sqf`. This is why a code/logic change should almost always be made in `Missionframework/`, never duplicated per map.

### Mission boot sequence

`Missionframework/init.sqf` is the entry point, executed by the engine on mission start. Order matters:
1. `KPLIB_fnc_initSectors` runs first (server and clients both need sector data before anything else).
2. Server then loads `fetch_params.sqf`, `kp_liberation_config.sqf` (the per-map config, post variable-replacement), `presets/init_presets.sqf`, `kp_objectInits.sqf`.
3. Player menu activates (CBA-based KPPLM if available, else falls back to the legacy GREUH menu).
4. `scripts/shared/init_shared.sqf` runs on every machine; `scripts/server/init_server.sqf` only on the server; `scripts/client/init_client.sqf` only on machines with a player interface, after `waitUntil {alive player}`.
5. Headless clients run `scripts/server/offloading/hc_manager.sqf` instead of the client init.

### Code organization under `Missionframework/`

- `functions/` — global utility functions (`fn_*.sqf`), compiled via CfgFunctions into `KPLIB_fnc_*`. Subfolders `functions/curator/` and `functions/ui/` hold their own scoped functions.
- `scripts/server/` — server-authoritative systems, one subfolder per system: `ai/`, `battlegroup/`, `highcommand/`, `sector/`, `resources/`, `support/`, `secondary/`, `civrep/`, `asymmetric/`, `base/`, `offloading/` (headless-client load balancing), `remotecall/` (server-side RPC handlers). Each has its own `CfgFunctions.hpp` defining its own function namespace.
- `scripts/client/` — client-only systems: `build/` (FOB building UI/logic), `commander/`, `spawn/`, `markers/`, `actions/`, `ui/`, `tutorial/`, `remotecall/` (client-side RPC handlers), each with their own `CfgFunctions.hpp`.
- `scripts/shared/` — code that both client and server execute.
- `scripts/fob_templates/` — FOB layout templates split by mod dependency (`default/`, `apex/`, `unsung/`).
- `KP/KPPLM/` and `KP/KPGUI/` — the primary (CBA-based) player menu and GUI dialogs.
- `GREUH/` — the legacy fallback player menu/UI, used only when CBA isn't loaded.
- `presets/` — faction-specific unit/loadout presets, split into `blufor/`, `opfor/`, `resistance/`, `civilians/`.
- `arsenal_presets/` — virtual arsenal weapon/gear loadout presets.
- `kp_liberation_config.sqf` — the master tunable config (vehicle classlists, balance values, feature toggles); this is the file the build's preset `variables` step rewrites.
- `kp_objectInits.sqf`, `whitelist.sqf`, `description.ext`, `stringtable.xml` — standard Arma mission-root files for object init code, building whitelist, mission metadata, and localization.

### Conventions

- Functions are organized via `CfgFunctions.hpp` files (one per major scope: root `Missionframework/CfgFunctions.hpp` plus one in each of `scripts/server/`, `scripts/client/`, and presumably others), which auto-derive `<tag>_fnc_<name>` globals from `fn_<name>.sqf` files — declaring a new function means adding a `class <name> {};` entry to the relevant `CfgFunctions.hpp` and creating `fn_<name>.sqf` in that folder.
- Every `.sqf`/`.ext` file carries a standard header comment block (File/Author/Date/Last Update/License/Description/Parameter(s)/Returns) — see `.vscode/settings.json`'s `psi-header` config for the exact template, and any existing `fn_*.sqf` for examples.
- Indentation is 4 spaces, LF line endings, final newline required (`.editorconfig`).
- Functions validate/default their inputs with `params [["_x", default, [type]], ...]` at the top, per the SQF convention shown throughout `functions/`.

### Versioning and changes

- `KP_liberation_version` is set in `Missionframework/init.sqf`.
- `CHANGELOG.md` is updated for new features/bug fixes — the PR template explicitly reminds contributors of this for new features.
