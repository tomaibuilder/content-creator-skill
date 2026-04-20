---
name: humanize
description: Remove AI writing patterns from any text. Runs a slippery slope check and 12-point humanizer pass.
---

# Humanize Command

You are cleaning up text to remove AI writing patterns and improve readability. This works on any text — posts, emails, articles, drafts from other tools.

## Input

The user will either:

- Paste text directly after invoking this command
- Point to a file path to clean up

If they haven't provided text, ask: "Paste the text you want to humanize, or give me a file path."

## Process

Read the humanizer rules at `.claude/skills/content-create/_Resources/humanizer-rules.md`.

If the file doesn't exist, use the rules below as a fallback.

### Step 1: Slippery Slope Check

Check the text for readability flow:

1. Does each sentence pull the reader into the next?
2. Is there connective tissue between ideas? ("The catch is that", "Which means", "But", "So", "That's why")
3. Are there bridge sentences between blocks when ideas shift?
4. Are 2-3 naturally connected sentences grouped together?
5. Do short sentences have longer ones before or after them?
6. Read-aloud test: does each block sound like a continuation, not an isolated paragraph?

Fix any issues found.

### Step 2: Humanizer Pass (12-Point Checklist)

Check and fix every instance of:

1. **Negative parallelisms** — "No X. No Y. No Z." Weave into sentences naturally
2. **"It's not X. It's Y." framing** — State what it IS directly
3. **Duplicate sentence subjects** — Consolidate consecutive sentences with same subject+verb
4. **Negative block pattern** — Negative lead + negative ending = rewrite one
5. **Rule of three** — Only use if genuinely listing three specific things
6. **Short fragments as openers** — Full sentences only
7. **Em dash overuse** — Max 1 per post, 2 per article
8. **Inline bolded headers with colons** — Use story-driven sentences
9. **AI vocabulary** — Remove: "game-changer", "seamless", "unlock", "supercharge", "revolutionary", "comprehensive", "robust", "cutting-edge", "vibrant", "stunning", "groundbreaking"
10. **Hedge language** — Remove: "think", "maybe", "might", "potentially"
11. **Sycophantic tone** — No "Great question!", "Absolutely!"
12. **Same-length sentences** — Vary rhythm

### Step 3: Present Results

Show the cleaned text. Then show a brief changelog:

"**Changes made:**

- [List each type of fix applied, with count if multiple]
- e.g., Removed 3 em dashes, replaced with commas
- e.g., Rewrote 1 negative parallelism into natural sentence
- e.g., Varied sentence length in paragraph 2"

If no changes were needed, say: "This text is clean. No AI patterns detected."
