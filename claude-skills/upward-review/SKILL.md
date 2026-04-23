---
name: upward-feedback
description: Use this skill whenever the user wants help writing upward feedback about their manager. Triggers include any mention of 'upward feedback', 'feedback on my manager', or requests to respond to HR prompts asking what their manager does well, where their manager should grow, or what the skip-level should know. Also use when the user wants to brainstorm, draft, or refine specific examples of manager strengths or development areas. Use this skill even if the user just says something like 'it's time to give feedback on my boss' or 'help me fill out my manager's review.'
---

# Upward Feedback Skill

Help the user produce honest, constructive, and professionally framed feedback about their manager for a performance review cycle. The output should read like the observations of a thoughtful senior contributor who wants their manager to succeed, not like a fan letter or a complaint log.

## Form Structure

The target form has three questions. Work through them in order unless the user specifies otherwise:

1. **Strengths** — What does your manager do well that you appreciate?
2. **Growth Areas** — What is one area where your manager can improve or grow?
3. **Additional Feedback** — What other feedback would you like to share?

All three answers go to the skip-level, not directly to the manager. The manager will not see the verbatim responses, though the user could be quoted. This means the audience for all three questions is the same: the skip-level, who is forming or refining a picture of the manager's effectiveness and will use this input in their own assessment and coaching. The skill should help the user write for that reader: someone who has a stake in the manager's development, may or may not see the behaviors described firsthand, and needs a specific enough signal to act on.

The full form template is in `references/form.md` if you need to review it.

## Calibration Before Drafting

Before drafting, get a quick read on the relationship context. Ask the user:

1. How long have you worked with this manager?
2. How candid is the existing dynamic? Do they already know roughly what you'd say in sections one and two?
3. Are you trying to help this manager develop, position them well with their own manager, or something more complicated?

The answers should shape the tone. Long relationship with high candor means the user can be more direct. New relationship or low candor requires more care in framing. If the user signals fundamental misalignment with the manager, flag gently that an HR process or a direct conversation may be a better venue for certain kinds of feedback than a review form.

## Writing Principles

Follow these rules strictly when drafting any section.

### Voice and Tone

Write in first-person, narrative prose. No bullet points unless the user explicitly asks for them.

The target voice is constructive candor without either sycophancy or grievance. This is the voice of a senior contributor who wants their manager to succeed and can articulate specifically what would help them do so.

Focus on observable behaviors and their impact. Avoid personality traits, inferred motives, or characterizations. "When Ben pushed back on scope creep during the Realberry launch, the team had clear air cover to hold the line" is useful. "Ben is decisive" is not.

Avoid em dashes.

Avoid hollow praise. Every strength named needs a concrete example or an observable outcome. If the user can't point to a specific instance, it probably doesn't belong in the form.

### Content Strategy

**Lead with behavior and impact, not adjectives.** "My manager creates space for technical disagreement in staff meetings, which has made our architecture decisions materially better" beats "my manager is a great listener."

**Separate feedback from frustration.** If something is bugging the user personally, help them translate it into a behavior-impact statement. If it can't be translated cleanly, it probably belongs in a one-on-one conversation or with HR, not in this form. "I wish he'd respond to Slack faster" becomes either "Async responsiveness on time-sensitive client escalations would reduce friction during..." or it gets cut.

**Frame growth areas as the next frontier of the manager's leadership impact, not as deficiencies.** The analog to the self-eval principle of "natural next frontier for someone at their level" applies here. Pair each improvement area with what good would look like, so the feedback is actionable rather than just critical.

**For the strengths section**, pick two or three genuine strengths with specific examples. Breadth beats depth here. One paragraph each is usually enough.

**For the growth area**, pick the one that matters most. The form asks for one on purpose. If the user has a laundry list, help them identify the development area that would unlock the manager's effectiveness most, not the one that annoys them most.

**For the third question**, treat it as genuinely additional context rather than as a separate audience. Useful content includes: advocacy for things the manager is doing well that the skip-level may not see directly, meta-observations about the role or team's trajectory, support or constraints the manager needs from above to be more effective, systemic issues that are affecting the manager's performance but sit outside their control, and relevant context that the strengths and growth sections did not capture. Explicitly warn the user against using this section to escalate grievances that should go through HR or a direct conversation. This section can be short or left blank.

### The Room Test

Before finalizing any answer, apply the test: although the form is confidential and the manager will not see the verbatim response, the user could be quoted. Would the user be comfortable with the skip-level reading this sentence back to the manager, word-for-word? If the answer is no, the feedback either isn't ready to give, or the form isn't the right venue. This is not a call to soften everything. It's a call to own what you write.

## What Does Not Belong in the Form

Help the user keep the following out of the form, even if they bring it up:

Interpersonal conflicts that need a direct conversation, compensation or title grievances (wrong forum), criticisms the user hasn't already tried to raise in one-on-ones if the issue is a persistent pattern, feedback about the manager's peers or the broader organization, and anything the user would not be comfortable being quoted on.

If the user insists on including something that falls into one of these categories, name the risk clearly and let them decide.

## Workflow

### If the user provides raw notes or context

Run the calibration questions if you don't already have the answers from the conversation. Then draft the relevant section or sections. Present the draft and ask for feedback. Iterate.

### If the user asks for general help

Start with the calibration questions, then ask which section they want to tackle first or offer to work through the form top to bottom. For each section, ask what they want to highlight or flag. Rough notes are fine. The job is to elevate their writing to be specific, constructive, and professional.

### If the user provides a prior draft

Review it against the writing principles above. Flag any hollow praise, any unsupported characterizations, any sentences that fail the room test, and any content that belongs in a different venue. Offer specific, concrete rewrites rather than vague feedback.

## Important Constraints

Never invent examples or characterize behaviors the user hasn't described. If there isn't enough information to write a section, ask for more.

The output is Markdown by default.

Keep each answer to roughly 100 to 250 words. Upward feedback that runs long dilutes its own signal. The skip-level answer is often shorter, sometimes a single paragraph, sometimes empty by design.

Remember that the primary audience for all three answers is the skip-level, and that although the form is confidential, the user could be quoted. Write accordingly.
