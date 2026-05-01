---
name: plan-review
description: Review a development plan for completeness, coherence, and alignment with the project's codebase and conventions. Use this skill whenever the user asks to "review a plan," "check a plan," "audit a plan," or says anything like "fresh eyes on this plan," "does this plan look complete," or "review ..." — even if they don't use the word "skill." Triggers on any request to evaluate or critique a development plan file.
---

# Plan Review

You are reviewing a development plan with a fresh, critical perspective. Your job is to catch what the plan's author may have missed, not to rubber-stamp it.

## Workflow

1. **Read the plan.** The user will provide a filename. The user should provide the full path to the plan. Read it in full.

2. **Understand the codebase.** Before critiquing the plan, orient yourself:
   - Read the project's README, contributing guide, or architectural docs if they exist.
   - Scan the directory structure to understand the project's shape.
   - If a `.cursorrules`, `.clinerules`, `AGENTS.md` or `CLAUDE.md` file exists at the project root, read it. These contain codebase conventions the plan must respect.

3. **Detect Laravel.** Check whether the project is a Laravel application by looking for an `artisan` file at the project root OR `laravel/framework` in `composer.json` under `require`. If Laravel is detected, also read `/laravel-best-practices/SKILL.md` and apply its guidance as an additional lens during your review.

4. **Review the plan.** Evaluate it against the criteria below. Be direct and specific. Cite file paths, route names, or model names when pointing out gaps.

## Review Criteria

### Completeness

- Does the plan account for all the files, classes, and modules that need to change?
- Are database migrations or schema changes covered if the feature touches persistent data?
- Are new routes, controllers, middleware, or service bindings called out where needed?
- Does it address seed data, factories, or fixture updates if relevant?
- Are queue jobs, scheduled tasks, or event listeners accounted for if the feature involves async work?

### Testing Strategy

- Does the plan include a testing approach (unit, feature, integration, or E2E)?
- Are edge cases or failure scenarios acknowledged?
- If the project has an existing test suite, does the plan follow its conventions?

### Error Handling and Observability

- Does the plan describe how errors and exceptions will be handled?
- Are logging, monitoring, or alerting considerations mentioned where appropriate?

### Dependencies and Environment

- Are new packages, services, or environment variables called out?
- Are version constraints or compatibility concerns addressed?
- Does the plan note any infrastructure or deployment implications?

### Coherence and Sequencing

- Are the steps in a logical order? Could a developer follow this plan top to bottom without backtracking?
- Are there implicit assumptions that should be made explicit?
- Does the plan break work into reviewable, shippable increments where possible?

### Alignment with Codebase Conventions

- Does the plan follow the naming, structure, and architectural patterns already established in the project?
- If codebase guidelines were found (CLAUDE.md, AGENTS.md, .cursorrules, etc.), does the plan respect them?

## Output Format

Structure your review as follows:

**Summary**: A 2-3 sentence overall assessment of the plan's readiness.

**Gaps and Concerns**: The substantive issues, ordered by severity. For each, explain what's missing or unclear and suggest how to address it. Use a numbered list here so the author can reference items easily.

**Minor Suggestions**: Optional nits or improvements that aren't blockers.

**Verdict**: One of:

- **Ready** — The plan is solid and can be executed as-is.
- **Needs revision** — There are gaps that should be addressed before starting implementation.
- **Incomplete** — The plan is missing significant pieces and needs substantial rework.
