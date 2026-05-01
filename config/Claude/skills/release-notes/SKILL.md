---
name: release-notes
description: Previews the projected version and release notes for the next GitHub release without creating any tags or releases. Use when the user asks to "preview release notes," "what would the next release notes look like," "show me the next version," or types `/release-notes`. Read-only — never tags, pushes, or publishes.
---

# Preview Release Notes

Preview the next release without modifying any state.

## Usage

```text
/release-notes [major|minor|patch]
```

If no bump type argument is provided, auto-select it based on commit analysis. Do not pause for confirmation.

## Workflow

Execute **Steps 1 through 4** from `../_shared/release-workflow.md`, with these adjustments:

- **No branch verification.** This skill works on any branch.
- **Step 2 adjustment.** Do not pause to ask the user to confirm the bump type. If an argument was provided, use it. Otherwise, auto-select the suggested bump type and note it in the output.

After Step 4, display the result in this format and stop:

```text
Projected version: vX.Y.Z → vA.B.C
Suggested bump: <major|minor|patch>

Release Notes:
---
[generated notes]
---

Run `/release` to create this release.
```

Do not create tags, push tags, or call `gh release`.
