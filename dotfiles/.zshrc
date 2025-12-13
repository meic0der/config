
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

# cdショートカット
alias app='cd /Users/matsumototakuya/Desktop/06.プログラミング/アプリ'
alias prog='cd /Users/matsumototakuya/Desktop/06.プログラミング'
alias config='cd ~/config/dotfiles'

# Git系（必要なら増やしてOK）
alias gs='git status'
alias gc='git commit -m'
alias gco='git checkout'

# ls系
alias ll='ls -alF'

# ================================
# Prompt（見た目）: Starship
# ================================
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

