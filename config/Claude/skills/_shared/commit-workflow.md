# Commit Workflow

Shared steps used by the `commit`, `commit-and-push`, and `commit-and-pr` skills. Each skill executes a specific contiguous range of these steps starting from Step 1.

If any step fails, stop execution and report what went wrong.

## Step 1: Review current changes

Review the currently staged and unstaged changes in the working directory.

## Step 2: Stage all changes

If specific files are already staged, respect the existing staging and skip this step. Otherwise, stage everything:

```bash
git add -A
```

## Step 3: Commit the changes

Write a conventional commit message based on the actual diff. Use the appropriate type (feat, fix, refactor, chore, etc.) and a concise but descriptive subject line. If the changes warrant it, include a short body explaining the "why".

Commit the changes.

## Step 4: Push

Push the branch to the remote. Use `--set-upstream origin <branch>` if the branch has no upstream yet.

## Step 5: Open a PR

Open a pull request using the `gh` CLI. Derive the PR title from the commit message subject. Leave the body empty unless there are multiple commits or the changes are complex enough to warrant explanation, in which case write a brief summary.
