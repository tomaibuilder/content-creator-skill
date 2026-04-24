# Content Creator Skill for Claude Code

A content creation system that writes in YOUR voice using proven copywriting principles. Creates social media posts, emails, and articles with built-in quality checks that catch AI-sounding writing before you see it.

## What You Get

Three tools that work together:

- `/setup-voice` — One-time setup. Interviews you (or analyzes your existing content) to build a personalized voice profile
- `/content-create` — The main workflow. Creates posts, emails, and articles in your voice with approval gates at every step
- `/humanize` — Standalone cleanup. Paste any text and it removes AI writing patterns

## Installation

Paste this into Claude Code:

```
Install the content-creator plugin from github.com/tomaibuilder/content-creator-skill
```

Claude Code will handle the rest. Once installed, run `/setup-voice` to build your voice profile.

**Alternative (manual install):**

```bash
git clone https://github.com/tomaibuilder/content-creator-skill.git
cd content-creator-skill
./install.sh
```

## Quick Start

1. **Set up your voice** — Open Claude Code and run `/setup-voice`. You'll either paste 5-10 pieces of content you're proud of, or answer 8 questions about your voice. Takes about 10 minutes.

2. **Create content** — Run `/content-create` and tell it what you want to write. It'll ask clarifying questions, generate hooks, write the content, and run quality checks automatically.

3. **Clean up any text** — Run `/humanize` and paste any text. It'll remove AI patterns and improve readability.

## How It Works

### The Voice Profile

When you run `/setup-voice`, it creates a detailed profile of how you write: your personality traits, tone, vocabulary, hook patterns, and anti-patterns. Every piece of content the skill creates is checked against this profile.

### The Content Workflow

`/content-create` follows a structured process:

**For posts and emails:**

1. Brief intake (topic, audience, platform, goal)
2. Hook generation (10-20 options, scored and ranked)
3. Full content draft (with automatic quality checks)
4. Output saved to organized folders

**For articles:**

1. Brief intake + source material
2. Headline generation (15-20 options)
3. Subheadline generation (scored against copywriting principles)
4. Article outline (structured for maximum readability)
5. Full draft (with automatic quality checks)
6. Output saved to organized folders

### Built-In Quality Checks

Every piece of content automatically goes through two checks before you see it:

1. **Slippery Slope Check** — Makes sure every sentence pulls the reader into the next. No isolated paragraphs.
2. **Humanizer Pass** — Catches and fixes 12 common AI writing patterns (negative parallelisms, em dash overuse, AI vocabulary, hedge language, and more).

### Copywriting Principles

The skill uses Alen Sultanic's proven copywriting mechanics:

- 4-line block rule (never more than 4 lines per paragraph)
- Hook construction ("Install", "In [Year]", "Different", "Can't/Because")
- Away-to-Towards psychology
- Sensory language over abstraction

## Updating

Re-run the install script anytime. Your voice profile is preserved:

```bash
cd content-creator-skill
git pull
./install.sh
```

## Troubleshooting

**Skill not showing up?** Restart Claude Code after installing.

**"No voice profile found"?** Run `/setup-voice` first.

**Content doesn't sound like me?** Run `/setup-voice` again with more/better content samples. The more examples you give it, the better the profile.

**Want to tweak your voice profile manually?** Edit `~/.claude/skills/content-create/_Resources/voice-profile.md` directly.
