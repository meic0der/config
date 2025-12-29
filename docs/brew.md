# 開発環境（Homebrew）
本リポジトリの開発は、macOS 上で Homebrew により管理された以下のツール群を前提としています。
2025/12/28時点。brewをインストールするたび管理するのはめんどくさいので、たまに更新。

## インストール済み Formulae（CLIツール）

### 基本開発ツール
- node <br>
フロントエンド（Vite / React）およびバックエンド（Node.js / Express）で使用。
- corretto@21（Cask）<br>
AWS 提供の Java 21。Spring Boot / Kotlin バックエンドで使用。
- pyenv <br>
Python バージョン管理ツール。
- python@3.13 <br>
スクリプト処理、機械学習、バックエンド処理用の Python 実行環境。

### データベース
- postgresql@14 <br>
ローカル開発・テスト用の PostgreSQL。

### クラウド・インフラ関連
- awscli <br>
AWS 操作用 CLI。
- terraform <br>
Infrastructure as Code（IaC）ツール。AWS リソース管理に使用。

### シェル・プロンプト拡張
- z <br>
利用履歴に基づいて高速にディレクトリ移動できるツール。
- starship <br>
クロスシェル対応の高機能プロンプト。
- zsh-autosuggestions <br>
コマンド履歴から入力候補を自動表示。
- zsh-syntax-highlighting <br>
コマンドの構文を色分け表示。
- htop <br>
CPU / メモリ使用状況を確認できるプロセスビューア。

### セキュリティ・通信・圧縮(依存関係)
以下は直接操作することは少なく、他ツールの依存として利用されます。
node, python, AWS CLI内部で使用。
- sqlite　<br>
軽量な組み込み型データベース（ローカルツールや簡易テスト用途）。<br>
- openssl@3, ca-certificates <br>
SSL/TLS 通信、証明書管理。<br>
- libnghttp2 <br>
HTTP/2 サポート。
- libuv <br>
非同期 I/O ライブラリ。
- krb5 <br>
Kerberos 認証ライブラリ。
- brotli, lz4, xz <br>
各種圧縮ライブラリ。
- c-ares <br>
非同期 DNS 解決。
- icu4c@77 <br>
Unicode・国際化対応ライブラリ。
- mpdecimal
  Python の内部数値演算
- readline
  ターミナル入力を快適にするライブラリ
- ncurses
  ターミナル UI 描画
#### ビルド・ツールチェイン（内部利用）
- autoconf, m4, pkgconf <br>
  ネイティブライブラリのビルド設定に使用される内部ツール。

### インストール済み Casks（GUIアプリ）
- docker-desktop <br>
Docker 実行環境。LocalStack や E2E テスト（Playwright）で使用。
- iterm2 <br>
高機能ターミナルエミュレータ。
- chatgpt <br>
ChatGPT デスクトップアプリ。
- font-jetbrains-mono-nerd-font <br>
Nerd Font 対応の等幅フォント（アイコン表示対応）。

## Homebrew セットアップ
依存関係は Homebrew が自動解決するため、明示的に必要なツールのみを管理しています。
scriptを実行すると、Brewfileのappをインストールします。
実行権限：
```bash
chmod +x scripts/brew-setup.sh
```
使い方：
```bash
./scripts/brew-setup.sh
```