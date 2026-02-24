---
description: Commit changes and push to the remote
---

Review the currently staged and unstaged changes in the working directory, then:

1. Stage all changes (`git add -A`) unless specific files have already been staged, in which case respect the existing staging.
2. Write a conventional commit message based on the actual diff. Use the appropriate type (feat, fix, refactor, chore, etc.) and a concise but descriptive subject line. If the changes warrant it, include a short body explaining the "why".
3. Commit the changes.
4. Push the branch to the remote (use `--set-upstream origin` if the branch has no upstream yet).

Do not proceed past any step that fails. Report what went wrong and stop.
