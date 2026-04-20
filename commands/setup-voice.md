---
name: setup-voice
description: One-time setup to create your personalized voice profile for the content-create skill. Analyzes your existing content or interviews you to build a voice profile.
---

# Voice Profile Setup

You are setting up a personalized voice profile for the content creation skill. This profile ensures all content sounds like the user, not like generic AI output.

## Pre-flight Check

First, check if a voice profile already exists at `.claude/skills/content-create/_Resources/voice-profile.md`.

- If it exists: Ask the user "You already have a voice profile. Do you want to: (A) Update it with new content/answers, (B) Start completely fresh, or (C) Cancel?"
- If it does not exist: proceed to Step 1.

Also verify that the content-create skill is installed by checking for `.claude/skills/content-create/SKILL.md`. If not found, tell the user: "The content-create skill isn't installed yet. Please run the install command first."

## Step 1: Choose Input Mode

Ask the user:

"How would you like to build your voice profile?

A) **Paste content** — Share 5-10 pieces of content you're proud of (posts, emails, articles) and I'll analyze your voice patterns
B) **Answer questions** — I'll ask you 8 questions to build your profile from scratch
C) **Both** — Paste content AND answer questions to refine the results

If you have existing content that represents how you want to sound, option A or C will give the best results."

Wait for their response before proceeding.

## Step 2a: Content Analysis Path

If the user chose A or C, ask them to paste their content. Then analyze and extract:

- **Tone and personality traits** — Are they bold or measured? Casual or professional? Warm or direct?
- **Sentence rhythm** — Short punchy sentences? Longer flowing ones? Mix?
- **Vocabulary preferences** — Words and phrases they gravitate toward
- **Hook patterns** — How do they open? What patterns recur?
- **Anti-patterns** — Things they clearly never do
- **Topic domains** — What they write about

## Step 2b: Interview Path

If the user chose B or C, ask these questions ONE AT A TIME. Wait for each answer before asking the next:

1. "What's your niche or industry? (e.g., fitness coaching, SaaS, real estate, AI/automation)"
2. "Who's your audience? Think about their age range, role, and how aware they are of your topic."
3. "How do you want to sound? Here's a quick spectrum — pick where you fall on each:
   - Casual <-> Formal
   - Bold <-> Reserved
   - Warm <-> Direct
   - Playful <-> Serious
   - Simple language <-> Sophisticated language"
4. "What topics do you post about most?"
5. "Which platforms do you use? (X, LinkedIn, Instagram, email, other)"
6. "Any phrases, words, or patterns that feel like 'you'? Things you say naturally that people associate with you."
7. "Any words or styles you hate? (e.g., 'game-changer', corporate speak, excessive emojis, hustle culture language)"
8. "Who do you admire in your space? Name 1-3 creators whose tone you respect (even if your voice is different from theirs)."

## Step 3: Generate Voice Profile

Using the content analysis and/or interview answers, generate a voice profile with this exact structure:

```
# [User's Name] Voice Profile

**Generated:** [Today's date]
**Method:** [Content analysis / Interview / Both]

---

## Voice Summary

[3-4 sentences describing how they sound. Be specific and vivid. Not "professional and friendly" but something like "Sounds like someone who's been doing this for years and is finally sharing what actually works, without the fluff. Direct but not cold. Backs every claim with a specific number or example."]

---

## Core Personality Traits

- **[Trait 1]:** [Description with examples of how this shows up in their writing]
- **[Trait 2]:** [Description]
- **[Trait 3]:** [Description]
- **[Trait 4]:** [Description]
- **[Trait 5]:** [Description — optional, only if distinct from the others]

---

## Tone Spectrum

| Dimension | Position | Notes |
|---|---|---|
| Formal <-> Casual | [Their position] | [Brief note] |
| Serious <-> Playful | [Their position] | [Brief note] |
| Reserved <-> Bold | [Their position] | [Brief note] |
| Simple <-> Sophisticated | [Their position] | [Brief note] |
| Warm <-> Direct | [Their position] | [Brief note] |

---

## Opening Patterns

[3-5 hook formulas that match their voice, with example phrasings for each. If content was analyzed, base these on actual patterns found. If interview only, generate patterns that match their described voice.]

---

## Vocabulary

### Words/Phrases to USE:
[Words, phrases, and language patterns that sound like them]

### Words/Phrases to AVOID:
[Words and patterns that do NOT sound like them — include AI slop words by default plus any they specifically mentioned hating]

---

## Anti-Patterns

[Things to never do when writing in this voice. Always include: no hedge words, no AI hype words, no sycophantic tone. Add any voice-specific anti-patterns.]

---

## Platform Notes

[Any platform-specific adjustments based on where they post. E.g., "LinkedIn: slightly more professional framing but same directness. X: tighter, punchier. Email: more personal, longer sentences OK."]
```

Save to: `.claude/skills/content-create/_Resources/voice-profile.md`

Show the user the generated profile and ask: "Here's your voice profile. Does this sound like you? I can adjust any section."

Make adjustments if requested. Save the final version.

## Step 4: Create Folder Structure

Create these directories in the user's current working directory:

```
Content/
├── Posts/
│   ├── Organic/
│   └── Sponsored/
├── Articles/
└── Emails/
```

## Step 5: Confirm

Tell the user:

"Your voice profile is ready and saved. Here's what was created:

- **Voice profile:** `.claude/skills/content-create/_Resources/voice-profile.md`
- **Content folders:** `Content/Posts/Organic/`, `Content/Posts/Sponsored/`, `Content/Articles/`, `Content/Emails/`

**Next steps:**

- Run `/content-create` to start creating content with your voice
- Run `/humanize` to clean up any text (removes AI patterns)
- Run `/setup-voice` again anytime to update your profile"
