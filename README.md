# configFile

このリポジトリは、Zsh と Homebrew の設定を管理するための構成です。

## Zsh 設定の概要
- oh-my-zsh は使わず、軽量で見通しの良い構成にしています。
- プロンプトは Starship を使用します。
- dotfiles の `install.sh` でシンボリックリンクを作成します。

詳細は `docs/zsh.md` を参照してください。

## Homebrew 設定の概要
- Brewfile で CLI ツールと GUI アプリを管理します。
- 依存関係は Homebrew に任せ、明示的に必要なツールだけを追加します。

詳細は `docs/brew.md` を参照してください。
