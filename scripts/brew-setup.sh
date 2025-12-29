#!/usr/bin/env bash
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

# brew bundle が使えるか確認（環境差対策）
if brew help bundle >/dev/null 2>&1; then
  echo "Installing via Brewfile..."
  brew bundle --file="./Brewfile"
else
  echo "brew bundle not available. Installing brew-bundle..."
  brew install brew-bundle || true
  brew bundle --file="./Brewfile"
fi

brew cleanup
echo "Done."