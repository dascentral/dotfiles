# Preview Release Notes

Preview the release notes and projected version for the next release, without creating any tags or GitHub releases.

## Usage

```text
/release-notes [major|minor|patch]
```

If no argument is provided, analyze the commits and automatically select the appropriate bump type — no confirmation needed.

## Instructions

Read the step definitions from `~/.claude/commands/release.md` and execute **Steps 1, 2, 3, and 4 only**, with the following adjustments:

- **Skip Step 0** — no branch verification; this command works on any branch.
- **Step 2 adjustment** — do not pause to ask for bump type confirmation. If an argument was provided, use it. If not, select the suggested bump type automatically and note it in the output.

After completing Step 4, display the results in the following format and stop. Do not proceed to Step 5 or Step 6.

```text
Projected version: vX.Y.Z → vA.B.C

Release Notes:
---
[generated notes here]
---

Run `/release` to create this release.
```
