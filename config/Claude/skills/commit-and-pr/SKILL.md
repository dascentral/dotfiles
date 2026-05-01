---
name: commit-and-pr
description: Stages and commits all pending changes, pushes to the remote, and opens a GitHub pull request via `gh`. Use when the user asks to "commit and open a PR," "ship this as a PR," "commit, push, and open a pull request," or types `/commit-and-pr`.
---

# Commit and PR

Stage, commit, push, and open a pull request.

## Workflow

Execute **Steps 1 through 5** from `../_shared/commit-workflow.md`.

## Notes

- Respect any existing staging.
- The commit message must be a conventional commit derived from the actual diff.
- Use `git push --set-upstream origin <branch>` if the branch has no upstream yet.
- Use the `gh` CLI for the PR (per project tooling preference). Derive the title from the commit subject. Leave the body empty unless multiple commits or complexity warrants a brief summary.
- If any step fails, stop and report what went wrong.
