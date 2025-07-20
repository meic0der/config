# configFile

## iTerm2 セットアップガイド

### 📦 iTerm2 のインストール（Homebrew）

以下のコマンドで iTerm2 をインストールできます：

```zsh
brew install --cask iterm2
```

### ⚡ iTerm2 の便利なショートカット一覧

| 操作                         | ショートカット          | 説明                                       |
| ---------------------------- | ----------------------- | ------------------------------------------ |
| 新しいタブを開く             | `⌘ + T`                 | タブで新しいセッションを開始               |
| タブを閉じる                 | `⌘ + W`                 | 現在のタブを閉じる                         |
| タブ間を移動                 | `⌘ + ← / →`             | 左右のタブへ移動                           |
| ペインを縦に分割             | `⌘ + D`                 | 同じディレクトリで垂直分割                 |
| ペインを横に分割             | `⌘ + Shift + D`         | 同じディレクトリで水平分割                 |
| ペイン間の移動               | `⌘ + Option + 矢印キー` | 分割したペイン間をすばやく移動             |
| スクロールバック含めてクリア | `⌘ + K`                 | 画面全体をクリア                           |
| 検索                         | `⌘ + F`                 | ターミナル出力の検索                       |
| フルスクリーン表示           | `⌘ + Enter`             | フルスクリーンモードに切り替え             |
| 設定画面を開く               | `⌘ + ,`                 | Preferences からプロファイルなどを設定可能 |

## 🌀 Oh My Zsh セットアップガイド

### Oh My Zsh をインストール

以下のコマンドを実行：

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

初回実行時、~/.zshrc が自動生成・書き換えされます。必要ならバックアップを取っておきましょう。

### テーマを変更（おすすめ：agnoster や robbyrussell）

~/.zshrc を開いて、以下の行を編集：

```zsh
ZSH_THEME="robbyrussell"
```

変更後は以下を反映

```zsh
source ~/.zshrc
```

### よく使うプラグインを有効化

.zshrc の plugins=() の中にプラグイン名を追加：

```zsh
plugins=(git z extract colored-man-pages zsh-autosuggestions)
```

### 🔌 Oh My Zsh プラグイン一覧と使い方

| プラグイン名          | 説明                                                     | 使い方例                                              |
| --------------------- | -------------------------------------------------------- | ----------------------------------------------------- |
| `git`                 | Git 用のエイリアスを多数追加                             | `gst` → `git status`, `gco` → `git checkout`          |
| `z`                   | ディレクトリ移動を学習し、名前の一部で高速ジャンプ可能   | `z myproject` で過去に移動した `myproject` にジャンプ |
| `colored-man-pages`   | `man` コマンドを色付きで表示し、読みやすくする           | `man ls` など、通常通りに使用                         |
| `extract`             | 拡張子から解凍方法を自動判断して 1 コマンドで解凍可能    | `x file.zip`, `x archive.tar.gz`, `x something.7z`    |
| `zsh-autosuggestions` | 入力中に過去のコマンド候補をグレーでサジェストしてくれる | `git c` と打つ → `→`キーで `git commit ...` を補完    |

### カスタムエイリアス例（.zshrc に追加）

```zsh
alias gs='git status'
alias gc='git commit -m'
alias gco='git checkout'
alias ll='ls -alF'
```
