---
name: commit-and-push
description: Stages and commits all pending changes with a conventional commit message, then pushes to the remote. Use when the user asks to "commit and push," "push these changes up," or types `/commit-and-push`. For a PR after pushing, use `commit-and-pr` instead.
---

# Commit and Push

Stage, commit, and push the pending changes.

## Workflow

Execute **Steps 1 through 4** from `../_shared/commit-workflow.md`. Stop after Step 4 — do not open a PR.

## Notes

- Respect any existing staging. If the user has already staged specific files, skip the `git add -A` and commit only the staged set.
- The commit message must be a conventional commit derived from the actual diff.
- Use `git push --set-upstream origin <branch>` if the branch has no upstream yet.
- If any step fails, stop and report what went wrong.
