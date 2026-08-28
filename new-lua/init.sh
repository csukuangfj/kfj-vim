#!/usr/bin/env bash
set -e

# Get the absolute path of the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.config/nvim"
BACKUP_DIR="$HOME/.config/nvim.bak.$(date +%Y%m%d_%H%M%S)"

echo "==> Checking existing Neovim configuration..."

# If the target directory already exists, back it up first (and remove it if it's a real dir to allow symlinking)
if [ -d "$TARGET_DIR" ] && [ ! -L "$TARGET_DIR" ]; then
    echo "==> Found existing configuration at $TARGET_DIR. Backing up to $BACKUP_DIR ..."
    mkdir -p "$(dirname "$BACKUP_DIR")"
    mv "$TARGET_DIR" "$BACKUP_DIR"
    echo "==> Backup completed successfully!"
elif [ -L "$TARGET_DIR" ]; then
    echo "==> Removing existing symlink at $TARGET_DIR ..."
    rm "$TARGET_DIR"
fi

# Create parent directory if needed
mkdir -p "$(dirname "$TARGET_DIR")"

# Create symlink from SCRIPT_DIR to TARGET_DIR
echo "==> Creating symbolic link from $SCRIPT_DIR to $TARGET_DIR ..."
ln -s "$SCRIPT_DIR" "$TARGET_DIR"

echo "==> Symlink setup completed successfully!"
echo "==> When you launch Neovim, lazy.nvim will automatically load files directly from your workspace repository."
