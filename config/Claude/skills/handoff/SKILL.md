---
name: handoff
description: Compact the current conversation into a handoff document for another agent to pick up. Use when the user asks to "hand off this work," "write a handoff," "summarize this session for another agent," or types `/handoff`.
argument-hint: What will the next session be used for?
---

# Handoff

Write a handoff document summarizing the current conversation so a fresh agent can continue the work. Save it to `handoff.md` in the repository root. If a `handoff.md` file already exists, overwrite it without asking for confirmation.

If the working directory is not a repository, abort execution.

If the user passed arguments, treat them as a description of what the next session will focus on and tailor the doc accordingly.

## What to capture

Structure the document so the next agent (typically running `resume`) can quickly orient itself:

- **Goal** — the overall intent of the work.
- **Completed** — what has already been done.
- **In progress** — what is partially done and where it stands.
- **Recommended next step** — the single most useful thing to do next.
- **Key decisions and constraints** — choices made and why, plus anything that limits the approach.
- **Relevant files** — paths the next session will likely touch.
- **Suggested skills** — list the skills, if any, the next session should use (for example `resume`, then `commit`).

Do not duplicate content already captured in other artifacts (PRDs, plans, ADRs, issues, commits, diffs). Reference them by path or URL instead.

Note: `handoff.md` is a transient session artifact and should not be committed. Add it to `.gitignore` if it isn't already.
