---
name: peer-review
description: Use this skill whenever the user wants help writing a peer evaluation or peer feedback for a colleague. Triggers include any mention of 'peer review', 'peer eval', 'peer evaluation', 'peer feedback', '360 review', or requests to respond to HR prompts asking about a colleague's strengths, growth areas, values demonstration, or additional feedback for their manager. Also use when the user wants to brainstorm, draft, or refine specific examples of a peer's strengths or development areas. Use this skill even if the user just says something like 'I need to fill out a review for a coworker' or 'help me give feedback on a peer.'
---

# Peer Review Skill

Help the user produce specific, useful, and professionally framed feedback about a peer for a performance review cycle. The output should read as the observations of a thoughtful senior colleague who has worked with the peer in some meaningful way and can articulate what they bring and where they have room to grow. It should not read as either a reference letter or a competitive undermining of a colleague.

## Form Structure

The target form has four questions. Work through them in order unless the user specifies otherwise:

1. **Strengths** — In what parts of their role is this person performing well?
2. **Growth Area** — What is one area where this person can improve or grow?
3. **Values Demonstration** — In what ways has this person demonstrated the company's values? (Invention, Bravery, Elevation, Generosity)
4. **Additional Feedback** — What other feedback would you like to share with their manager?

The full form template is in `references/form.md` if you need to review it.

All four answers go to the peer's manager, not directly to the peer. The peer will not see the verbatim responses, though the user could be quoted. The peer's manager is specifically asking for the user's perspective because the user has some relevant working relationship with the peer, and will use this input in the peer's own performance review and development planning.

## Calibration Before Drafting

Before drafting, get a quick read on the working relationship. Ask the user:

1. What's the working relationship? Frequent collaborator, occasional overlap, cross-functional partner, someone who reports into a team you partner with, or something else?
2. What's the scope of your visibility? Are you seeing their work firsthand, seeing the outputs, hearing about it secondhand, or some combination?
3. Is there anything about the dynamic that could bias your read? Competitive tension, a project that went badly, strong personal rapport, or meaningful power differences should be named so the skill can help you write with appropriate care.

The answers should shape the feedback. Narrow visibility means the feedback should stay tightly scoped to what you've actually observed and say so explicitly. Broader collaboration means you can speak to more dimensions of the peer's work.

## Writing Principles

Follow these rules strictly when drafting any section.

### Voice and Tone

Write in first person, narrative prose. No bullet points unless the user explicitly asks for them.

The target voice is specific and professional. This is the voice of a colleague who has something useful to contribute because they've actually worked with the peer, not a character reference.

Focus on observable behaviors and their impact. Avoid personality traits, inferred motives, or secondhand characterizations. "When we partnered on the client's website migration, she held the line on test coverage even when the timeline tightened, which kept the launch stable" is useful. "She's really dedicated" is not.

Stay inside your lane of visibility. Name where you've actually worked with the peer and resist speculating about areas you haven't. If the peer has a strength or challenge outside what you've observed directly, either leave it out or flag the limit of your view. "I don't have visibility into their work with the Prudential team, but in the client's website engagement I saw..." is a legitimate and useful framing.

Avoid em dashes.

Avoid generic praise. Every strength named needs a concrete example or an observable outcome. If the user can't point to a specific instance, it probably doesn't belong in the form.

### Content Strategy

**Lead with behavior and impact, not adjectives.** "When we were debugging the redirect issues during the website cutover, she surfaced the SonarQube findings early enough that we could fix them before launch" beats "she's a strong engineer."

**Scope your feedback to what you've seen.** Peer reviews have more credibility when they acknowledge visibility limits than when they try to sound comprehensive. Pick the two or three things you can speak to with specificity and go deep on those rather than surveying the whole role.

**Frame the growth area constructively and within your own visibility.** The analog to the self-eval principle of "natural next frontier" applies here. Pair the improvement area with what good would look like. If you only have one data point, say so. One genuine observation beats a pattern claim the user can't really support.

**For the values section**, map real observed behaviors to each value. Don't force-fit. If the user has a strong example for two of the four values and nothing for the others, write strongly about those two and say so. A value with a real example lands harder than four values with generic filler.

**For the fourth question**, treat it as genuinely additional context rather than as a separate audience. Useful content includes: context the peer's manager may not have about how the peer shows up in cross-functional work, advocacy for things the peer is doing well that may not be visible within their own team, systemic factors that are shaping the peer's performance, or relevant context the first three sections did not capture. Warn the user against using this section to raise issues that belong in a direct conversation with the peer or in a separate channel with their manager. This section can legitimately be short or left blank.

### The Room Test

Before finalizing any answer, apply the test: although the form is confidential and the peer will not see the verbatim response, the user could be quoted. Would the user be comfortable with the peer's manager reading this sentence back to the peer in a coaching or development conversation? If the answer is no, the feedback either isn't ready to give or the form isn't the right venue. This is not a call to soften everything. It's a call to own what you write.

## What Does Not Belong in the Form

Help the user keep the following out of the form, even if they bring it up:

Interpersonal conflicts that need a direct conversation with the peer, secondhand complaints or rumors the user hasn't verified, characterizations about parts of the peer's role the user hasn't actually seen, comparisons to other peers, feedback about the peer's manager or broader team dynamics that isn't really about the peer, and anything the user would not be comfortable being quoted on.

If the user insists on including something that falls into one of these categories, name the risk clearly and let them decide.

## Workflow

### If the user provides raw notes or context

Run the calibration questions if you don't already have the answers from the conversation. Then draft the relevant section or sections. Present the draft and ask for feedback. Iterate.

### If the user asks for general help

Start with the calibration questions, then ask which section they want to tackle first or offer to work through the form top to bottom. For each section, ask what they want to highlight or flag. Rough notes are fine. The job is to elevate them into writing that is specific, constructive, and professional.

### If the user provides a prior draft

Review it against the writing principles above. Flag any generic praise, any unsupported characterizations, any sentences that stretch beyond the user's actual visibility, any force-fit values examples, and any content that belongs in a different venue. Offer specific, concrete rewrites rather than vague feedback.

## Important Constraints

Never invent examples or characterize behaviors the user hasn't described. If there isn't enough information to write a section, ask for more.

The output is Markdown by default.

Keep each answer to roughly 100 to 250 words. Peer feedback that runs long either restates itself or drifts into areas beyond the user's visibility. The fourth answer is often shorter, sometimes a single paragraph, sometimes empty by design.

Remember that the primary audience is the peer's manager, and that although the form is confidential, the user could be quoted. Write accordingly.
