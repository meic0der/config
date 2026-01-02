
# ================================
# ~/.zshrc 
# 目的: 起動を軽く / 設定の見通しを良く / brewで管理
# ================================

# ---- Homebrew (必須) ----
eval "$(/opt/homebrew/bin/brew shellenv)"

# ---- Locale / Editor ----
export LANG=ja_JP.UTF-8
export EDITOR=vim


# ================================
# PATH / Environment
# ================================

# Java 21 に固定。ない場合は、何もしない。
export JAVA_HOME=$(/usr/libexec/java_home -v21 2>/dev/null)
if [[ -n "$JAVA_HOME" ]]; then
  export PATH="$JAVA_HOME/bin:$PATH"
fi

# ================================
# History（コマンド履歴の保存）
# ================================

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups        # 連続重複を保存しない
setopt share_history           # 複数ターミナル間で履歴共有
setopt inc_append_history      # 実行したら即履歴へ追記

# ================================
# Completion（補完）
# ================================

autoload -Uz compinit
compinit

# ================================
# Plugins（oh-my-zshの代替をbrewで）
# ================================
# zsh-autosuggestions: 入力中の候補表示
# zsh-syntax-highlighting: コマンドを色付け（※最後にsourceするのが基本）
if command -v brew >/dev/null 2>&1; then
  # autosuggestions
  if [[ -f "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
    source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  fi

  # syntax highlighting（なるべく最後）
  if [[ -f "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
    source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  fi
fi

# ================================
# Directory jump（z）
# ================================
if command -v brew >/dev/null 2>&1; then
  if [[ -f "$(brew --prefix)/opt/z/etc/profile.d/z.sh" ]]; then
    source "$(brew --prefix)/opt/z/etc/profile.d/z.sh"
  fi
fi

# ================================
# Aliases（よく使うやつ）
# ================================
# zsh-abbr
source "$(brew --prefix)/share/zsh-abbr/zsh-abbr.zsh"

# cdショートカット
abbr -S app='cd /Users/matsumototakuya/Desktop/06_programming/app'
abbr -S prog='cd /Users/matsumototakuya/Desktop/06_programming'
abbr -S config='cd ~/config/dotfiles'
abbr -S ~='cd ~'
abbr -S cloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
abbr -S obs='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/MyObsidian'

# git
abbr -S ga='git add'
abbr -S gs='git status'
abbr -S gb='git branch'
abbr -S gcm='git commit -m'
abbr -S gco='git checkout'
abbr -S gd='git diff'
abbr -S gl='git log'

# ls系
abbr -S ll='ls -alF'

# ================================
# Prompt（見た目）: Starship
# ================================
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

