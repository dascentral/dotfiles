---
description: Commit changes, push to the remote, and open a pull request
---

Review the currently staged and unstaged changes in the working directory, then:

1. Stage all changes (`git add -A`) unless specific files have already been staged, in which case respect the existing staging.
2. Write a conventional commit message based on the actual diff. Use the appropriate type (feat, fix, refactor, chore, etc.) and a concise but descriptive subject line. If the changes warrant it, include a short body explaining the "why".
3. Commit the changes.
4. Push the branch to the remote (use `--set-upstream origin` if the branch has no upstream yet).
5. Open a pull request using the `gh` CLI. Derive the PR title from the commit message subject. Leave the body empty unless there are multiple commits or the changes are complex enough to warrant explanation, in which case write a brief summary.

Do not proceed past any step that fails. Report what went wrong and stop.
