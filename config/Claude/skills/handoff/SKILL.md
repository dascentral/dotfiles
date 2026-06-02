---
name: handoff
description: Compact the current conversation into a handoff document for another agent to pick up
argument-hint: What will the next session be used for?
---

# Handoff

Write a handoff document summarizing the current conversation so a fresh agent can continue the work. Save it to `handoff.md` in the repository root — the project-local handoff (read the file first if it exists). If the working directory is not a repository, fall back to `~/.claude/handoff.md`.
Suggest the skills to be used, if any, by the next session.

Do not duplicate content already captured in other artifacts (PRDs, plans, ADRs, issues, commits, diffs). Reference them by path or URL instead.

If the user passed arguments, treat them as a description of what the next session will focus on and tailor the doc accordingly.
