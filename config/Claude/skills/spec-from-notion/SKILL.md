---
name: spec-from-notion
description: Turns a draft feature in the Notion "Features" database into a structured spec on disk. Use when the user asks to "load spec FEAT-12," "plan the feature from Notion," "write the spec for <feature ID>," or types `/spec-from-notion <ID>`. Fetches the draft by its "Spec ID" property, asks clarifying questions, generates a spec via the spec skill, writes it to docs/specs/, and marks the Notion record "In Review."
---

# Spec From Notion

Turn a raw draft in the Notion "Features" database into a reviewed spec checked into the repository.

## Inputs

- **Spec ID** — the value of the Features database's **"Spec ID"** property (e.g. `FEAT-12`). The user supplies this. If they didn't, ask for it before doing anything else.

## Workflow

### 1. Locate the Features database

Use the Notion MCP `notion-search` tool to find the database named "Features." Do **not** hardcode a database ID or URL — this skill is published in a public repository, so resolve it by name each run. If the search returns more than one plausible match, list them and ask the user which one.

### 2. Find the draft by its Spec ID

Fetch the Features database with `notion-fetch` to get its schema and a view URL, then locate the row whose **"Spec ID"** property equals the supplied value (query the view with `notion-query-database-view`, or search for the ID string, then confirm the match). Fetch that page in full with `notion-fetch` so you have its title, properties, and all raw notes.

- If no row matches, stop and tell the user the Spec ID wasn't found. Do not guess.

### 3. Evaluate the draft and ask clarifying questions

Read the raw notes critically. Before generating anything, surface gaps, ambiguities, and assumptions:

- What problem is this solving, and for whom?
- Scope boundaries — what's explicitly in and out.
- Constraints (deadlines, compatibility, performance) and edge cases.
- How success is measured.

Ask questions one cluster at a time and wait for answers. Do not proceed to the spec until the draft is clear enough to write against. If the user says the notes are sufficient, proceed.

### 4. Generate the spec

Invoke the `agent-skills:spec` skill to produce a structured specification from the (now-clarified) draft. Feed it the feature's intent, notes, and the answers gathered in step 3.

### 5. Write the spec to disk

Save it under `docs/specs/` (create the directory if it doesn't exist) with the filename:

```text
docs/specs/YYYY-MM-DD-feature-name.md
```

- `YYYY-MM-DD` is today's date.
- `feature-name` is a kebab-cased slug derived from the draft's title (fall back to a short description if the title is unusable). Lowercase, words separated by hyphens, no special characters.

Confirm the file was written before continuing.

### 6. Update the Notion record to "In Review.

Only after the file exists on disk, use `notion-update-page` with the `update_properties` command to set the record's **Status** property to **In Review**.

- The update tool requires exact property names — rely on the schema you fetched in step 2 to confirm the property is named "Status" and the option is "In Review." If either differs, ask the user rather than guessing.

### 7. Report

Tell the user the spec's path, the slug used, and confirm the Notion status was updated.

## Notes

- This skill writes a spec file and flips a Notion status — it does **not** implement the feature.
- If any step fails (database not found, ID not matched, file write fails), stop and report. Never mark the Notion record "In Review" unless the spec file was successfully written.
