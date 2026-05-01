---
name: commit
description: Stages and commits all pending changes with a conventional commit message. Use when the user asks to "commit these changes," "make a commit," "commit what I have," or types `/commit`. Does not push or open a PR. For push, use `commit-and-push`. For a PR, use `commit-and-pr`.
---

# Commit

Stage and commit the pending changes. Do not push.

## Workflow

Execute **Steps 1, 2, and 3** from `../_shared/commit-workflow.md`. Stop after Step 3 — do not push.

## Notes

- Respect any existing staging. If the user has already staged specific files, skip the `git add -A` and commit only the staged set.
- The commit message must be a conventional commit (`feat`, `fix`, `refactor`, `chore`, etc.) derived from the actual diff, not from the user's request phrasing.
- If any step fails, stop and report what went wrong.
