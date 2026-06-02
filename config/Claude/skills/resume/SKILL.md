---
name: resume
description: Pick up where a previous session left off using the handoff document
argument-hint: Any additional context or change in direction for this session
---

# Resume

Read `handoff.md` in the repository root and orient yourself to the previous session's context. If it's missing (or the working directory is not a repository), fall back to `~/.claude/handoff.md`.

Summarise for the user in three or four bullet points what was in progress, what was completed, and what the recommended next step is. Keep it brief — the user knows the background.

If the user passed arguments, treat them as a correction or new direction and factor them into the recommended next step.

Once acknowledged by the user, proceed with the work — do not wait to be re-briefed.
