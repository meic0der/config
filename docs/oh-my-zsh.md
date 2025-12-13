## 🌀 Oh My Zsh セットアップガイド

### Oh My Zsh をインストール

以下のコマンドを実行：

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

初回実行時、~/.zshrc が自動生成・書き換えされます。必要ならバックアップを取っておきましょう。

※この後、dotfile で設定する場合は、.zshrc は設定ずみ使うので下記設定不要。
dotfiles セットアップ手順を実施する。

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