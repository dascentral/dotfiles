---
name: self-evaluation
description: Use this skill whenever the user wants help writing a performance self-evaluation or self-reflection. Triggers include any mention of 'self-eval', 'self-reflection', 'self-assessment', or requests to document accomplishments and impact for a manager or HR process. Also use when the user wants to brainstorm, draft, or refine responses to review prompts about contributions, values, strengths, growth areas, or career goals. Use this skill even if the user just says something like 'help me with my review' or 'it's review season.'
---

# Self-Evaluation / Self-Reflection Skill

Help the user produce a compelling, honest, and strategically positioned self-evaluation for their performance review cycle. The output should read as confident senior leadership prose, not a list of tasks completed.

## Form Structure

The target form has six sections. When the user asks for help, work through them in order unless they specify otherwise:

1. **Contributions and Impact** — Goals, key results, demonstrated values.
2. **Values Demonstration** — Specific examples of Invention, Bravery, Elevation, Generosity.
3. **Performing Best** — Role expectations and strengths.
4. **Areas to Improve or Grow** — Role expectations and development areas.
5. **Career Growth and Development Goals** — Proposed actions to learn, grow, and advance.
6. **Overall Self-Rating** — One of four tiers: Missing the Mark, On Track, Setting the Pace, Trailblazing.

The full form template is in `references/form.md` if you need to review it.

## Writing Principles

Follow these rules strictly when drafting any section:

### Voice and Tone

- Write in first person, narrative prose. No bullet points unless the user explicitly asks for them.
- Project confidence without arrogance. The tone should be that of a senior leader who knows their worth and can articulate it clearly.
- Never use "manage" or "managed." Always use "lead" or "led" (or other active leadership verbs like "drove," "shaped," "directed," "orchestrated").
- Avoid em dashes.
- Avoid hollow self-congratulation. Every claim needs a concrete example or observable outcome.

### Content Strategy

- **Lead with impact, not activity.** "I led the migration of 800+ URL redirects across two hosting platforms, eliminating SEO risk during a critical replatforming" is better than "I worked on redirects for the website migration."
- **Quantify where possible.** Team sizes, client counts, revenue impact, efficiency gains, adoption metrics.
- **Name the strategic context.** Connect individual contributions to broader business outcomes: client retention, new capability development, organizational resilience, revenue growth.
- **Show leadership beyond direct responsibilities.** Mentorship, cross-functional influence, culture-building, knowledge sharing, and organizational advocacy all belong here.
- **For the values section**, map real accomplishments to each value. Don't force-fit. If the user doesn't have a strong example for one value, say so and help them think of one rather than fabricating.
- **For growth areas**, be genuine but strategic. Frame development areas as the natural next frontier for someone at their level, not as weaknesses. Pair each area with a concrete action or intention.
- **For career goals**, connect aspirations to organizational need. The best goals show the user's growth as aligned with what the company needs next.

### Self-Rating Guidance

- Help the user calibrate honestly. Walk through the four tiers and ask which resonates, rather than suggesting one outright.
- If they're unsure, help them pressure-test by asking: "What would someone at the next tier be doing that you aren't?" and "What are you doing that goes beyond what's expected at your current tier?"

## Workflow

### If the user provides raw accomplishments or context

Draft the relevant section(s) immediately. Present the draft and ask for feedback. Iterate.

### If the user asks for general help

Start by asking what section they want to tackle first, or offer to work through the form top to bottom. For each section, ask what they want to highlight before drafting. Don't make them type a perfect list; rough notes, stream-of-consciousness, or "here's what I did this year" is fine. Your job is to elevate it.

### If the user provides a prior self-eval or draft

Review it against the writing principles above. Offer specific, concrete improvements rather than vague feedback. Rewrite sections if asked.

## Important Constraints

- Never invent accomplishments. If you don't have enough information to write a section, ask for more.
- The output is Markdown by default.
- Keep each section to roughly 150-300 words. Reviews that run long lose their reader. If a section needs to be longer because the user has genuinely done that much, that's fine, but tighten the prose.
- Remember that the audience is the user's manager and potentially HR leadership. Write accordingly.
