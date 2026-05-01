---
name: resolve-copilot-comments
description: Reviews unresolved GitHub Copilot comments on the current open pull request, applies fixes for those that warrant action, commits and pushes the changes, then resolves each conversation with a note describing the fix or rationale. Use when the user asks to "resolve Copilot comments," "address Copilot feedback," "go through the Copilot review," or types `/resolve-copilot-comments`.
---

# Resolve Copilot Comments

## Workflow

If any step fails, stop execution and report what went wrong.

### Step 1: Review unresolved comments

Use `gh` to find the currently open pull request for the working branch and list **unresolved** comments authored by GitHub Copilot. Identify which comments are reasonable or necessary to address.

If no open PR exists, or there are no unresolved Copilot comments, take no action and report that to the user.

### Step 2: Apply fixes

Make the changes needed to address the unresolved comments you judged worth acting on. Skip comments that are off-base, redundant, or stylistic disagreements — but track them for Step 4.

### Step 3: Commit and push

Commit the changes with a conventional commit message describing the fixes, then push to the remote. (Equivalent to running the `commit-and-push` skill.)

### Step 4: Resolve each conversation

For each unresolved comment, post a reply via `gh` describing:

- **For comments you addressed**: a one-line summary of the fix.
- **For comments you intentionally did not address**: a brief rationale.

Resolve each conversation once the reply is posted.
