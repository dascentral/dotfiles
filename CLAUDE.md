# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This is a personal macOS dotfiles repository for automating machine setup and maintenance. All scripts assume the repo is cloned to `~/.dotfiles`.

## Key Commands

**Initial machine setup** (run once on a new machine):
```bash
~/.dotfiles/install.sh
```

**Ongoing maintenance** (run regularly to keep the machine up-to-date):
```bash
dotfiles
```
The `dotfiles` binary lives in `bin/` which is added to `$PATH` via `.zshrc`. It pulls the latest repo, runs Homebrew maintenance, updates Composer packages, refreshes Git/SSH/editor configs, and applies macOS settings.

**Run an individual setup script:**
```bash
./scripts/homebrew.sh
./scripts/cursor.sh
./scripts/vscode.sh
./scripts/macos.sh
```

## Architecture

### Entry Points

| File | Purpose |
|------|---------|
| `install.sh` | First-run setup for a new machine |
| `bin/dotfiles` | Idempotent maintenance script run regularly |

Both source `lib/config.sh` which loads `lib/colors.sh` (terminal color vars) and `lib/functions.sh` (shared utility functions).

### Directory Structure

- **`scripts/`** — Individual setup scripts called by both entry points. Each is self-contained, sources `lib/config.sh`, and is idempotent.
- **`settings/`** — Editor and app settings that get symlinked into place:
  - `settings/Cursor/User/` → `~/Library/Application Support/Cursor/User/`
  - `settings/VSCode/User/` → `~/Library/Application Support/Code/User/`
  - `settings/macOS/config` — macOS `defaults` commands (referenced by `scripts/macos.sh`)
- **`config/`** — Source configs that get symlinked to `~`:
  - `config/Claude/commands/` — Claude Code user-level slash commands (linked to `~/.claude/commands`)
  - `config/Git/` — Git configuration (linked to `~/.gitconfig`)
  - `config/Alfred/` — Alfred workflows
- **`lib/`** — Shared bash utilities (`colors.sh`, `functions.sh`, `config.sh`)
- **`bin/`** — Scripts added to `$PATH` (via `.zshrc`), including personal workflow helpers
- **`Brewfile`** — Machine-specific (git-ignored); `Brewfile.example` is the template

### Settings Management Pattern

Editor settings (`settings/Cursor/User/`, `settings/VSCode/User/`) are **symlinked** from the dotfiles repo into the app's expected location. This means editing `settings/Cursor/User/settings.json` directly modifies the live Cursor settings. The `scripts/cursor.sh` and `scripts/vscode.sh` scripts create these symlinks.

### Brewfile Workflow

The `Brewfile` at the repo root is machine-specific and git-ignored. `Brewfile.example` and `Brewfile.quickstart` serve as templates. Copy one to create your `Brewfile` before running `install.sh`.

### Script Conventions

- All scripts source `lib/config.sh` at the top
- Scripts use shared functions: `info`, `success`, `warn`, `abort`, `line` for colored output
- Scripts are idempotent — safe to re-run multiple times
- `dotfiles_confirm_stable` in `bin/dotfiles` aborts if the repo has uncommitted changes before maintenance runs

### Primary Tech Stack Supported

PHP/Laravel development environment: Composer (with global packages like `laravel/installer`, `laravel/valet`), PHP tooling (Intelephense, PHP-CS-Fixer via Pint), plus general web dev (Tailwind CSS, ESLint, Prettier).
