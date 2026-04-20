# Content-Create Skill

**Complete content creation workflow with human-in-the-loop approvals**

---

## Purpose

Single skill that loads your voice profile, copywriting principles, and quality rules, then guides you through content creation with approval gates.

**What it replaces:** Manually explaining your voice and style to Claude Code every time you create content.

**Why it exists:** Claude Code doesn't have persistent context between sessions. This skill bundles your voice profile and proven copywriting principles so every content creation session starts with full context loaded.

---

## Auto-Loaded Context

When you invoke this skill, it automatically reads:

1. **Voice Profile** → `_Resources/voice-profile.md`
2. **Sultanic Principles** → `_Resources/sultanic-principles.md`
3. **Humanizer Rules** → `_Resources/humanizer-rules.md`

---

## Pre-flight

When invoked, automatically:

1. **Check** that `_Resources/voice-profile.md` exists. If not, tell the user: "No voice profile found. Run `/setup-voice` first to create one." and STOP.
2. **Read** the voice profile at `_Resources/voice-profile.md`
3. **Read** the Sultanic principles at `_Resources/sultanic-principles.md`
4. **Read** the humanizer rules at `_Resources/humanizer-rules.md`

---

## Workflow (Human-in-the-Loop)

---

### Phase 1: Brief Intake

**User provides:**

- Topic or product
- Audience
- Goal: awareness, engagement, or conversions
- Content type: organic post, sponsored post, email, or article
- Platform: X, LinkedIn, Instagram, email, or other
- Any specific requirements or constraints

**Skill asks clarifying questions:**

- What angle? (contrarian, discovery journey, timeline precision, results-first, mechanism reveal, etc.)
- Hook preference? (Sultanic tweak priority, e.g. "In [Year]", "Install", "Different", "Can't/Because")
- Tone adjustment? Leave blank to default to voice profile settings.

**Routing:**

- Posts (organic or sponsored) → Phase 2, Phase 3, Phase 4
- Email → Phase 2, Phase 3 (email-adapted), Phase 4
- Article → Phase A1 through A6

---

### Phase 2: Hook Generation

**For sponsored content, research the product first:**

Before writing a single hook, pull together:

- Key stats and verified numbers from source material
- Core differentiators
- Real claims the user has provided (do NOT fabricate)
- Mechanism or feature that makes this different

**Generate 10-20 hooks minimum.**

Each hook must be a wildly different angle, not a variation of the same idea. Aim for genuine diversity: different emotional angles, different audiences implied, different problems named, different Sultanic tweaks applied.

**Label each hook with:**

- Hook type (e.g. curiosity loop, discovery, social proof, mechanism reveal, away language)
- Sultanic tweak used (e.g. "In [Year]", "Install", "Different", "Can't/Because", Away-to-Towards)

**Hook voice rules:**

- Write in conversational sentences, not telegraphic fragments
- No AI sentence openers ("Discover", "Unlock", "Transform", "Master")
- Lean on Sultanic principles (see loaded context)
- Match the voice profile patterns for sentence length and rhythm
- No hedge language, no vague claims, no generic motivational framing

**Score EVERY hook using this table:**

| Criterion              | Weight | What to check                                                         |
| ---------------------- | ------ | --------------------------------------------------------------------- |
| Curiosity loop         | 20%    | Does it demand a click or read? Will they stop scrolling?             |
| Specificity            | 15%    | Exact numbers, names, timelines — no vague claims                     |
| Sultanic tweak applied | 15%    | "Install", "In [Year]", "Different", "Can't/Because", Away-to-Towards |
| Sensory/Visualizable   | 15%    | Can the reader see, feel, or hear it? No abstraction                  |
| Now Problem            | 15%    | Daily pain, not a theoretical future problem                          |
| Credibility signal     | 10%    | Builder proof, experience signal, real result                         |
| Voice compliance       | 10%    | Matches voice profile, no hedges, no AI vocabulary                    |

Score each hook out of 10 per criterion, weighted to a final score out of 10. Present hooks from highest to lowest score. Flag the top 3 with a clear marker.

**GATE 1: Wait for hook approval before proceeding.**

---

### Phase 3: Full Content Creation

Write the full content using the approved hook, applying the voice profile and Sultanic principles throughout (4-line blocks, Away-to-Towards arc, mechanism specificity, etc.).

**Platform-specific formatting:**

**X (Twitter):**

- Respect character limits on every attempt (280 per tweet, or thread structure if longer)
- Scroll-stopping opening line as the hook — this is what shows in the feed
- Short paragraphs, one idea per line grouping
- One CTA at the end only

**LinkedIn:**

- Longer form is acceptable
- Professional tone adjustment while keeping voice
- First line is the hook (shows before "see more" truncation)
- Paragraph breaks every 2-3 lines for mobile readability
- One CTA at the end only

**Instagram:**

- Caption structure: hook line, body, CTA
- Visual-first framing — the caption supports what the image shows
- Hashtags at the end or in first comment (user's preference)
- One CTA only

**Email:**

- Subject line: written as a hook, applies same scoring criteria
- Preview text: completes or teases the subject line without repeating it
- Body: conversational, flows from subject to CTA without detours
- Single CTA — no competing links or asks

---

**Then immediately run both quality checks before presenting to the user:**

**Priority 1 — Sugarman Slippery Slope (readability):**

The goal is that every sentence pulls the reader into the next. Apply these rules:

- Every sentence should create enough curiosity or momentum that stopping mid-read feels uncomfortable
- Use connective tissue phrases to link ideas: "Here's why that matters", "Which means", "And that's the problem", "So what changed?"
- Bridge sentences between blocks when the topic or angle shifts — don't just hard-cut to a new idea
- Read each block aloud before finalizing. If it sounds choppy or you stumble, rewrite it
- Group 2-3 naturally connected sentences together rather than isolating every thought on its own line

**Priority 2 — Humanizer Pass (remove AI patterns):**

Check all 12 rules before presenting copy:

1. **Negative parallelisms** — Remove "Not X. Not Y. Z." constructions. Rewrite as a single affirmative statement.
2. **"It's not X. It's Y." framing** — Remove this pattern entirely. State the point directly.
3. **Duplicate sentence subjects** — If two consecutive sentences start with the same subject ("I did X. I then did Y."), restructure one of them.
4. **Negative block pattern** — Three or more consecutive sentences that each open with a negative ("No X. No Y. No Z.") must be collapsed or rewritten.
5. **Rule of three** — Avoid the pattern "X, Y, and Z." where three items are listed for rhetorical effect. Use one or two concrete specifics instead.
6. **Short fragments as sentence openers** — Do not open a sentence or paragraph with a standalone fragment like "Simple." or "Here's the thing." These are AI writing tells.
7. **Em dash overuse** — Maximum 1 em dash per post. Maximum 2 per article. Every em dash over the limit must be rewritten.
8. **Inline bolded headers with colons** — Remove patterns like "**The problem:** explanation" mid-paragraph. Write it as a normal sentence.
9. **AI vocabulary** — Remove: "delve", "dive into", "game-changer", "unlock", "transform", "elevate", "leverage", "actionable", "cutting-edge", "empower", "harness", "discover", "revolutionize", "seamlessly", "robust".
10. **Hedge language** — Remove: "might", "could", "perhaps", "some might say", "in many ways", "it's possible that", "arguably". Make direct claims or don't make them.
11. **Sycophantic tone** — No "Great question", no "Absolutely", no reflexive affirmations. Not in copy, not in transitions.
12. **Same-length sentences back to back** — Vary sentence length. Short-long-medium, not uniform. Uniform length reads robotic.

**Single CTA rule:** Every piece of content gets one CTA only. No competing asks. If the post drives to a link, there is no "drop a comment below" at the same time.

**GATE 2: Wait for content approval before proceeding.**

---

### Phase 4: Output Organization

Save all files to the appropriate folder structure under `Content/`.

**For Posts (organic or sponsored):**

```
Content/Posts/Organic/[Topic] - [YYYY-MM-DD]/
  brief.md
  hook-options.md
  post-final.md

Content/Posts/Sponsored/[Topic] - [YYYY-MM-DD]/
  brief.md
  hook-options.md
  post-final.md
```

**For Email:**

```
Content/Emails/[Topic] - [YYYY-MM-DD]/
  brief.md
  hook-options.md
  email-final.md
```

Confirm all file paths to the user after saving.

---

## Article Workflow (Phases A1–A6)

---

### Phase A1: Brief Intake + Source Material

**User provides:**

- Topic
- Audience
- Goal
- Source material (transcript, notes, research, product docs)
- Angle (contrarian, mechanism reveal, before/after, discovery journey, etc.)

**Skill asks clarifying questions:**

- What angle best fits the material?
- Who is the primary reader: technical (developers, operators) or broader (general business audience)?
- What is the "wrong thing" or "old way" the reader is currently doing that this article corrects?

---

### Phase A2: Headline Generation

Generate 15-20 headline variations, organized by hook patterns from the voice profile.

**Headline rules:**

- Under 70 characters (mobile-safe)
- Always title case
- Must open a curiosity loop — the reader should feel compelled to continue
- Apply Sultanic tweaks where relevant
- No vague claims, no generic motivational openers

**Label each headline with:**

- Pattern used (curiosity loop, mechanism reveal, timeline precision, contrarian, social proof, etc.)
- Character count

**GATE A1: Wait for headline approval before proceeding.**

---

### Phase A3: Subheadline Generation

Generate 15-20 subheadline variations.

**Subheadline rules:**

- Must NOT start with the same word or perspective as the approved headline
- Must deliver payoff on the headline's curiosity loop without fully closing it — leave the reader wanting to read the article to get the full answer
- Should increase specificity or add a concrete detail the headline didn't include

**Score EVERY subheadline against Sultanic principles:**

| Principle         | Score /10 | Notes                                                                  |
| ----------------- | --------- | ---------------------------------------------------------------------- |
| Curiosity Loop    |           | Does it demand a click? Does it raise a question in the reader's mind? |
| "Different" Tweak |           | Does it reframe, not just compare to alternatives?                     |
| Sensory/Specific  |           | Can the reader visualize exactly what's being described?               |
| "Now Problem"     |           | Is this a daily pain, not a theoretical future problem?                |
| Away to Towards   |           | Does it move from pain to aspiration in one line?                      |
| "Install" Tweak   |           | Does it imply the result is achievable with low effort?                |
| Digestibility     |           | Does it scan on mobile instantly without re-reading?                   |
| Hierarchy (LACK)  |           | Does it name what the reader is currently missing?                     |

Target: 8.5 or higher overall score. Present the top 3-5 with full scoring breakdowns.

**GATE A2: Wait for subheadline approval before proceeding.**

---

### Phase A4: Article Outline (Sultanic 4x12 Structure)

Build the outline using the Sultanic 4x12 structure: 12 blocks, maximum 4 lines per block.

**Narrative arc:**

- **Blocks 1-2 (Away Language):** Paint the old workflow or current pain. Use first person. The reader should recognize themselves in this description immediately.
- **Block 3 (The Reframe):** Name the shift. Apply the "Different" tweak. First person. This is where the perspective changes.
- **Blocks 4-8 (Features/Towards Language):** One feature or benefit per block. Lead with the EFFECT first, then explain the feature second. Use second person ("you") to shift from storytelling to addressing the reader directly.
- **Block 9 (Before/After):** Show the old vs new workflow side by side. Concrete and specific — use real numbers or real steps where possible.
- **Block 10 (Reframe):** Shift the emotional register from Away to Towards. The reader should feel the difference between where they were at Block 1 and where they could be.
- **Block 11 (CTA):** Use "Install" language. Specific and actionable. One action only — no alternatives.
- **Block 12 (Close):** Short. Personal conviction in first person. This is not a summary — it's a closing thought that lands the article's core belief.

**Section headline rules:**

- Every section headline tells a story on its own
- If someone reads ONLY the headlines, they should understand the full article arc
- No placeholder headlines like "Introduction" or "Section 3"

**Sultanic compliance checklist (mark before submitting outline):**

- [ ] Block count is exactly 12
- [ ] No block exceeds 4 lines
- [ ] Blocks 1-2 use Away language (pain, old way, current frustration)
- [ ] Block 3 contains the "Different" reframe
- [ ] Blocks 4-8 lead with effect before feature, use second person
- [ ] Block 9 has a concrete before/after comparison
- [ ] Block 10 shifts emotional register from Away to Towards
- [ ] Block 11 uses "Install" language with a single specific action
- [ ] Block 12 is short and closes on personal conviction
- [ ] All section headlines tell a story when read in sequence

**GATE A3: Wait for outline approval before proceeding.**

---

### Phase A5: Full Article Draft + Quality Pass

Write the full article from the approved outline.

**Before presenting the draft, run both quality checks:**

**Priority 1 — Sugarman Slippery Slope:**

- Every sentence must pull the reader into the next
- Connective tissue phrases between ideas: "Here's why", "Which creates a new problem", "And that's exactly the point"
- Bridge sentences between blocks when the angle shifts — no hard cuts between ideas
- Read each block aloud. Stumbling means rewriting.
- Group 2-3 connected sentences rather than fragmenting every thought

**Priority 2 — Humanizer Pass:**
All 12 humanizer rules apply (same as Phase 3). Additional calibration for long-form:

- Em dash maximum is 2 per article (not 1 as in posts)
- Inline bolded headers with colons are especially common in AI-written articles — remove all instances
- Same-length sentence patterns become amplified in long-form — actively vary across each block

**Writing tone rules for articles:**

- If the audience is broad (non-technical), strip all jargon on first draft. No acronyms without explanation. No assumed knowledge.
- If the audience is technical, precision is acceptable but the core narrative arc must still be human and story-driven
- First person for the opening and closing. Second person for the feature and benefit blocks.

**GATE A4: Wait for draft approval before proceeding.**

---

### Phase A6: Output Organization

Save all article files to the structured folder:

```
Content/Articles/[Topic] - [YYYY-MM-DD]/
  brief.md
  headline-options.md
  subheadline-options.md
  outline.md
  article-draft-v1.md
  article-draft-v[N].md   (for each revision)
  article-final.md
```

Confirm all file paths to the user after saving.

---

## Usage Examples

### Example 1: Full Sponsored Post Workflow

```
User: Create sponsored post for [Product]. Audience: agency owners. Goal: conversions. Platform: X.

Skill:
  → Pre-flight: loads voice profile, Sultanic principles, humanizer rules
  → Phase 1: asks for angle and any product claims to use
  → Phase 2: generates 15 hooks, scores all, presents top 3 flagged
  → GATE 1: user approves hook #4
  → Phase 3: writes full post with approved hook, runs slippery slope + humanizer
  → GATE 2: user requests one line change
  → Skill applies change, re-checks humanizer rules
  → Phase 4: saves to Content/Posts/Sponsored/[Product] - [Date]/
```

### Example 2: Quick Organic Post (Hooks Only)

```
User: Generate hooks for a post about why most automation projects fail.
      Audience: business owners. Platform: LinkedIn.

Skill:
  → Pre-flight: loads context
  → Phase 1: confirms this is a hooks-only request, no angle preference given
  → Phase 2: generates 20 hooks across 6 different angles, scores all
  → Presents hooks highest to lowest score, top 3 flagged
  → User selects and takes it from there — or continues to Phase 3
```

### Example 3: Article from Source Material

```
User: Write an article about [Topic]. Here's the transcript: [paste].
      Audience: non-technical founders. Angle: contrarian.

Skill:
  → Pre-flight: loads context
  → Phase A1: reads transcript, identifies key claims and mechanisms, asks clarifying questions
  → Phase A2: generates 18 headlines, labels each with pattern and character count
  → GATE A1: user approves headline
  → Phase A3: generates 15 subheadlines, scores all against Sultanic principles
  → GATE A2: user approves subheadline
  → Phase A4: builds 12-block outline, runs Sultanic compliance checklist
  → GATE A3: user approves outline
  → Phase A5: writes full draft, runs slippery slope + full humanizer pass
  → GATE A4: user approves
  → Phase A6: saves all files to Content/Articles/[Topic] - [Date]/
```

---

## Skill Invocation

**Posts and emails:**

- "Create content for [topic]"
- "Create sponsored post for [product]"
- "Create organic post about [topic]"
- "Generate hooks for [topic]"
- "Write email about [topic]"

**Articles:**

- "Write an article about [topic]"
- "Generate article headlines for [topic]"
- "Build an outline for an article on [topic]"

**Cleanup only:**

- "Run humanizer on this text" → redirects to `/humanize` skill for standalone humanizer pass

---

## Quality Guarantees

**Voice alignment:** Every piece uses your actual voice profile, loaded fresh each session. Not a generic style approximation.

**Sultanic compliance:** Hooks and article structures are scored against the principles and checked before presenting — not left to assumption.

**Humanizer pass runs automatically:** All 12 AI pattern checks run before content is shown. You see the clean version, not the AI-draft version.

**Organized output:** Every piece of content goes into a clearly labeled folder with all working files preserved — briefs, hook options, and finals.

---

## Limitations

- Does not generate images
- Does not post to social media platforms directly
- Does not track performance metrics or engagement data
