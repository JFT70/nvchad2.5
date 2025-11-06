# Repository Guidelines

## Project Structure & Module Organization
`init.lua` bootstraps NvChad and defers to `lua/`. Common behaviour lives in `lua/options.lua`, `lua/mappings.lua`, and `lua/autocmds.lua`, while `lua/chadrc.lua` toggles profile-specific modules. `lua/plugins/init.lua` lists Lazy specs and `lua/configs/` holds per-plugin overrides. Keep features in dedicated files required from `chadrc.lua` so reviewers can trace ownership easily. `lazy-lock.json` pins plugin SHAs—refresh it only after the profile boots cleanly with `Lazy sync`.

## Build, Test, and Development Commands
- `NVIM_APPNAME=nvchad2.5 nvim` — run Neovim with this profile without touching your default config.
- `nvim --headless "+Lazy sync" +qa` — install declared plugins and validate the lockfile.
- `nvim --headless "+Lazy update" +qa` — preview upgrades; commit the new lockfile only after validation.
- `stylua lua` — format Lua sources (install Stylua via `:Mason` if missing).

## Coding Style & Naming Conventions
Use two-space indentation, align multiline tables, and keep trailing commas for calmer diffs. Module filenames stay lowercase; tables and functions use `snake_case` keys mirroring plugin names. Prefer small helper functions over large inline lambdas in mappings. Run Stylua before committing and keep `chadrc.lua` lean—load heavy config from `lua/configs/<plugin>.lua`.

## Testing Guidelines
There is no automated suite, so rely on interactive validation. After changes, open `NVIM_APPNAME=nvchad2.5 nvim`, run `:Lazy sync`, then `:checkhealth` to uncover missing providers. For formatter or LSP tweaks, test in a scratch buffer and call `:ConformInfo` or `:LspInfo`. Capture manual repro steps or sample buffers in the PR so reviewers can replay them quickly.

## Commit & Pull Request Guidelines
History favours short, Title Case subjects (e.g. “Enlarge left window width”). Follow that style, keep commits focused, and mention touched modules in the body when a change spans multiple areas. PRs should outline intent, highlight user-facing effects (keymaps, UI, diagnostics), link related issues, and state the validation steps you ran. Attach screenshots or asciinema clips for visual updates.

## Troubleshooting & Environment Tips
If the profile fails to load, purge cached state with `rm -rf ~/.local/share/nvim/nvchad2.5` before syncing again. Compare plugin regressions against `lazy-lock.json` and roll back individual specs when needed. Keep Neovim on the same major version that NvChad targets to avoid API drift.
