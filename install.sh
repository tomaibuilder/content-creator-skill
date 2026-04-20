#!/bin/bash
# Content Creator Skill Installer
# Usage: Clone this repo, then run ./install.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Content Creator Skill..."

# Backup existing voice profile if present
VOICE_PROFILE="$HOME/.claude/skills/content-create/_Resources/voice-profile.md"
BACKUP=""
if [ -f "$VOICE_PROFILE" ]; then
    BACKUP=$(mktemp)
    cp "$VOICE_PROFILE" "$BACKUP"
    echo "  Backed up existing voice profile"
fi

# Copy skill files
mkdir -p "$HOME/.claude/skills/content-create/_Resources"
cp "$SCRIPT_DIR/skills/content-create/SKILL.md" "$HOME/.claude/skills/content-create/"
cp "$SCRIPT_DIR/skills/content-create/_Resources/sultanic-principles.md" "$HOME/.claude/skills/content-create/_Resources/"
cp "$SCRIPT_DIR/skills/content-create/_Resources/humanizer-rules.md" "$HOME/.claude/skills/content-create/_Resources/"

# Restore voice profile if it was backed up
if [ -n "$BACKUP" ] && [ -f "$BACKUP" ]; then
    cp "$BACKUP" "$VOICE_PROFILE"
    rm "$BACKUP"
    echo "  Restored your voice profile"
fi

# Copy commands
mkdir -p "$HOME/.claude/commands"
cp "$SCRIPT_DIR/commands/setup-voice.md" "$HOME/.claude/commands/"
cp "$SCRIPT_DIR/commands/humanize.md" "$HOME/.claude/commands/"

echo ""
echo "Installed successfully!"
echo ""
echo "Next steps:"
echo "  1. Open Claude Code"
echo "  2. Run /setup-voice to create your voice profile"
echo "  3. Run /content-create to start creating content"
echo "  4. Run /humanize anytime to clean up AI-sounding text"
