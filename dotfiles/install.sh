#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🔗 Setting up dotfiles from: $DOTFILES_DIR"

# ================================
# .zshrc
# ================================
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
echo "✔ linked ~/.zshrc"

# ================================
# Starship config
# ================================
# ~/.config が無い環境向け
mkdir -p "$HOME/.config"

ln -sf "$DOTFILES_DIR/starship/starship.toml" "$HOME/.config/starship.toml"
echo "✔ linked ~/.config/starship.toml"

# ================================
# （将来用）他の設定
# ================================
# ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
# ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
# ln -sf "$DOTFILES_DIR/.config/nvim" "$HOME/.config/nvim"

echo "🎉 Dotfiles setup completed"

