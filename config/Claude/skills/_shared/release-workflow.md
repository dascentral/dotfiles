# Release Workflow (Analysis Steps)

Shared steps used by the `release` and `release-notes` skills. Covers gathering commit context, picking a version bump, calculating the next tag, and generating the markdown release notes. Skills that use this file are responsible for any pre-checks (branch verification) and post-actions (dry-run confirmation, tagging, GitHub release creation).

## Step 1: Gather context

Establish the current state:

```bash
git tag --sort=-version:refname | head -20
```

Identify the most recent semver tag (format `vX.Y.Z`). If no tags exist, the initial version is `v0.1.0`.

Fetch all commits since that tag:

```bash
git log <last-tag>..HEAD --pretty=format:"%H %s" --no-merges
```

For each commit, retrieve the full message to capture body text:

```bash
git log <last-tag>..HEAD --pretty=format:"%H|||%s|||%b" --no-merges
```

## Step 2: Analyze commits and determine version bump

Categorize each commit using the following rules, in priority order:

- **Major** — any commit with a breaking change indicator (`BREAKING CHANGE` in the body, or `!` after the type in a conventional commit, e.g., `feat!:`)
- **Minor** — conventional commits with type `feat`, or freeform commits that clearly introduce new functionality
- **Patch** — conventional commits with types `fix`, `perf`, `refactor`, or freeform commits that are bug fixes, dependency updates, or maintenance

The invoking skill decides whether to ask the user to confirm the bump type or auto-select it.

## Step 3: Calculate the next version

Apply the chosen bump type to the last tag:

- `major`: increment X, reset Y and Z to 0
- `minor`: increment Y, reset Z to 0
- `patch`: increment Z only

## Step 4: Generate release notes

Write release notes in the following format:

```markdown
## What's Changed

### New Features

- Description of feature (commit sha short)

### Bug Fixes

- Description of fix (commit sha short)

### Improvements & Refactoring

- Description of improvement (commit sha short)

### Maintenance

- Description of maintenance work (commit sha short)

### Other Changes

- Any commits that don't fit the above categories
```

Guidelines for writing the notes:

- Write for a technical audience but avoid raw commit message text where it's cryptic.
- For conventional commits, use the description after the type prefix as the basis.
- For freeform commits, summarize the intent based on the message content.
- Group related commits together under a single bullet where it makes sense rather than listing every commit individually.
- Omit categories that have no entries.
- Do not include merge commits.
