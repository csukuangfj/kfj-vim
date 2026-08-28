#!/usr/bin/env bash
set -e

# Get the absolute path of the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.config/nvim"
BACKUP_DIR="$HOME/.config/nvim.bak.$(date +%Y%m%d_%H%M%S)"

echo "==> Checking existing Neovim configuration..."

# If the target directory already exists, back it up first
if [ -d "$TARGET_DIR" ]; then
    echo "==> Found existing configuration at $TARGET_DIR. Backing up to $BACKUP_DIR ..."
    mkdir -p "$(dirname "$BACKUP_DIR")"
    cp -R "$TARGET_DIR" "$BACKUP_DIR"
    echo "==> Backup completed successfully!"
fi

# 1. Create target configuration directory structure
mkdir -p "$TARGET_DIR/lua/plugins"

# 2. Sync configuration files from the script directory to ~/.config/nvim/
echo "==> Syncing configuration files to $TARGET_DIR ..."

if [ -f "$SCRIPT_DIR/init.lua" ]; then
    cp "$SCRIPT_DIR/init.lua" "$TARGET_DIR/init.lua"
fi

if [ -d "$SCRIPT_DIR/lua/plugins" ]; then
    cp -R "$SCRIPT_DIR/lua/plugins/"* "$TARGET_DIR/lua/plugins/"
fi

echo "==> Configuration sync completed!"
echo "==> When you launch Neovim for the first time, lazy.nvim will automatically download and install all plugins."
