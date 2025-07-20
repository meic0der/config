#!/bin/bash

# シンボリックリンクを作成（元が存在する場合は上書き）
ln -sf $(pwd)/dotfiles/.zshrc ~/.zshrc

# 他に必要があれば追加
# ln -sf $(pwd)/dotfiles/.gitconfig ~/.gitconfig
# ln -sf $(pwd)/dotfiles/.vimrc ~/.vimrc
# ln -sf $(pwd)/dotfiles/.config/nvim ~/.config/nvim

echo "✅ dotfiles linked!"
