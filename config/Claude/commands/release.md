# Create Release

Create a new GitHub release with auto-generated release notes based on git commit history since the last release.

## Usage

```
/release [major|minor|patch]
```

If no argument is provided, analyze the commits and prompt the user to confirm the suggested bump type before proceeding.

## Instructions

### Step 1: Gather context

Run the following to establish the current state:

```bash
git tag --sort=-version:refname | head -20
```

Identify the most recent semver tag (format `vX.Y.Z`). If no tags exist, the initial version will be `v0.1.0`.

Then fetch all commits since that tag:

```bash
git log <last-tag>..HEAD --pretty=format:"%H %s" --no-merges
```

For each commit, also retrieve the full message to capture any body text:

```bash
git log <last-tag>..HEAD --pretty=format:"%H|||%s|||%b" --no-merges
```

### Step 2: Analyze commits and determine version bump

Categorize each commit using the following rules, in priority order:

- **Major** — any commit with a breaking change indicator (`BREAKING CHANGE` in the body, or `!` after the type in a conventional commit, e.g., `feat!:`)
- **Minor** — conventional commits with type `feat`, or freeform commits that clearly introduce new functionality
- **Patch** — conventional commits with types `fix`, `perf`, `refactor`, or freeform commits that are bug fixes, dependency updates, or maintenance

If an argument of `major`, `minor`, or `patch` was provided, use that. If no argument was provided, suggest the appropriate bump type based on the analysis and ask the user to confirm before proceeding:

> Based on the commits since `vX.Y.Z`, I suggest a **minor** release. The changes include new features but no breaking changes. Shall I proceed with `vX.Y.Z+minor`, or would you like to choose a different bump type?

Wait for confirmation before continuing.

### Step 3: Calculate the next version

Apply the confirmed bump type to the last tag:

- `major`: increment X, reset Y and Z to 0
- `minor`: increment Y, reset Z to 0
- `patch`: increment Z only

### Step 4: Generate release notes

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

- Write for a technical audience but avoid raw commit message text where it's cryptic
- For conventional commits, use the description after the type prefix as the basis
- For freeform commits, summarize the intent based on the message content
- Group related commits together under a single bullet where it makes sense rather than listing every commit individually
- Omit categories that have no entries
- Do not include merge commits

### Step 5: Dry run review

Before creating anything, display the full plan:

```
Version: v1.2.3 → v1.3.0
Tag: v1.3.0

Release Notes:
---
[generated notes here]
---

This will:
  1. Create and push git tag v1.3.0
  2. Create GitHub release "v1.3.0" with the above notes

Proceed? (yes/no)
```

Wait for explicit confirmation before continuing.

### Step 6: Create the tag and release

Once confirmed, run:

```bash
git tag v1.3.0
git push origin v1.3.0
```

Then create the GitHub release:

```bash
gh release create v1.3.0 \
  --title "v1.3.0" \
  --notes "<generated release notes>"
```

Confirm success by showing the release URL returned by the `gh` CLI.
