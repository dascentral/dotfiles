---
description: Commit all changes
---

# Commit and Push

Commit the pending changes issue a `git push`.

## Usage

```text
/commit
```

## Instructions

If any of the steps below fail, stop execution and report what went wrong.

### Step 1: Review current changes

Review the currently staged and unstaged changes in the working directory.

### Step 2: Stage all changes

Run the following command from the current branch to stage all changes. If specific files have already been staged, respect the existing staging.

```bash
git add -A
```

### Step 3: Commit the changes

Write a conventional commit message based on the actual diff. Use the appropriate type (feat, fix, refactor, chore, etc.) and a concise but descriptive subject line. If the changes warrant it, include a short body explaining the "why".

Commit the changes.
