---
name: release
description: Creates a new GitHub release with auto-generated notes from commit history since the last tag. Use when the user asks to "create a release," "tag a release," "ship a new version," "cut a release," or types `/release`. Only runs from the `main` branch. For preview only, use `release-notes`.
---

# Create Release

Create a new GitHub release with auto-generated release notes based on git commit history since the last tag.

## Usage

```text
/release [major|minor|patch]
```

If no bump type argument is provided, analyze the commits and prompt the user to confirm the suggested bump type before proceeding.

## Workflow

### Step 0: Verify current branch

Confirm the current branch:

```bash
git branch --show-current
```

If the result is anything other than `main`, abort with this message and take no further action:

> Releases can only be created from the `main` branch. You are currently on `<branch-name>`. Please switch to `main` and try again.

### Steps 1 through 4: Analyze commits and generate notes

Execute **Steps 1 through 4** from `../_shared/release-workflow.md`, with this adjustment:

- **Step 2.** If a bump type argument was provided, use it. Otherwise, suggest a bump type based on commit analysis and ask the user to confirm:

  > Based on the commits since `vX.Y.Z`, I suggest a **minor** release. The changes include new features but no breaking changes. Shall I proceed with `vA.B.C`, or would you like to choose a different bump type?

  Wait for confirmation before continuing.

### Step 5: Display plan, tag, and release

**1. Display the full plan:**

```text
Version: v1.2.3 → v1.3.0
Tag: v1.3.0

Release Notes:
---
[generated notes]
---

This will:
  1. Create and push git tag v1.3.0
  2. Create GitHub release "v1.3.0" with the above notes
```

Do not ask for an additional yes/no confirmation before tagging and releasing.

**2. Create and push the tag:**

```bash
git tag v1.3.0
git push origin v1.3.0
```

**3. Create the GitHub release:**

```bash
gh release create v1.3.0 \
  --title "v1.3.0" \
  --notes "<generated release notes>"
```

**4. Confirm success** by showing the release URL returned by `gh`.
