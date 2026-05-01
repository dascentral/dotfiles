---
name: interview
description: Interviews the user with one targeted question at a time to understand a feature or task they want to build, then produces a detailed implementation plan without writing any code. Use when the user asks to "interview me," "help me plan a feature," "ask me questions about what I want to build," or types `/interview`.
---

# Interview

Interview the user to gather enough context for a detailed implementation plan.

## Workflow

1. **Ask one question at a time.** Each question should be targeted and build on previous answers. Do not batch multiple questions in a single turn — the goal is a conversation, not a form.

2. **Drive toward enough context.** Cover (in roughly this order, as relevant): the user's goal, the affected surface area of the codebase, constraints (deadlines, compatibility, performance), edge cases, and how success will be measured.

3. **Produce the plan.** Once you have enough context, deliver a detailed implementation plan covering:
   - Files and modules that will change.
   - Data, schema, or migration changes if any.
   - Tests that will be added or updated.
   - Risks and open questions.

4. **Do not write code or modify files.** This skill is planning-only.

> For full Plan Mode enforcement (read-only tool access at the harness level), the user can activate Plan Mode before invoking this skill.
