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

## 🐚 Zsh 構成について（本リポジトリの方針）

本設定では oh-my-zsh は使用しません。
理由：
- 起動が軽い
- 設定の見通しが良い
- brew / dotfiles 管理と相性が良い

### 📚 oh-my-zsh について（参考）
現在使ってないが以前は使っていた。
docs/oh-my-zsh.md 参照

## 🚀 Starship（プロンプト）
### 概要
本設定では Starship を使ってプロンプトを管理します。
- Git ブランチ / 状態の自動表示
- 高速（Rust 製）
- .zshrc を汚さない
- 設定は starship.toml 1 ファイル

### インストール（Homebrew）
```zsh
brew install starship
```
### Starship 設定ファイルについて
Starship は以下のファイルを参照します：
```
~/.config/starship.toml
```
本リポジトリでは、install.sh により dotfiles 側の設定ファイルをシンボリックリンクします。
```
config/dotfiles/starship/starship.toml
  ↓
~/.config/starship.toml
```
## 🎨 Nerd Font（Starship 用フォント）
starship.tomlで設定しているStarship のアイコンや Powerline 記号を正しく表示するため、Nerd Font の利用を推奨します。

### インストール（例：JetBrains Mono）
```zsh
brew install --cask font-jetbrains-mono-nerd-font
```

### iTerm2 側の設定
- Preferences → Profiles → Text
- Font を JetBrainsMono Nerd Font に変更

## 📦 brew でインストールするツール一覧
本構成で使用しているツール：
```zsh
brew install \
  z \
  starship \
  zsh-autosuggestions \
  zsh-syntax-highlighting
```

## 🚀 dotfiles セットアップ手順
このリポジトリには `.zshrc` / `starship.toml` などの設定が含まれています。
付属の `install.sh` を実行すると シンボリックリンクを自動作成し、現在の PC に設定を反映することができます。

---

### ✅ セットアップ手順

#### 1. リポジトリをクローン

```zsh
git clone git@github.com:MatsumotoTakuya-1/configFile.git ~/config
cd ~/config/dotfiles
```

#### 2. install.sh を実行して設定を反映

```zsh
chmod +x install.sh
./install.sh
```

#### 3. 反映のために再読み込み

```zsh
source ~/.zshrc
```

状態確認コマンド

```zsh
ls -l ~/.zshrc
ls -l ~/.config/starship.toml
```

実行結果が下記になってれば OK

```zsh
~/.zshrc -> /Users/you/config/dotfiles/.zshrc
~/.config/starship.toml -> /Users/you/config/dotfiles/starship/starship.toml
```

#### 📝 注意事項

すでに ~/.zshrc などのファイルがある場合は 上書きされます。
心配な場合は事前にバックアップしておくことをおすすめします：

```zsh
mv ~/.zshrc ~/.zshrc.backup
mv ~/.config/starship.toml ~/.config/starship.toml.backup
```
※ `install.sh` は実行時に自身の配置ディレクトリを基準に
シンボリックリンクを作成します。
dotfiles を移動した場合は、再度 `install.sh` を実行してください。
