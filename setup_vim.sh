#!/bin/sh

# 過去になにかあってもすべて削除
rm -rf ~/.cache
rm -rf ~/.vimrc ~/.vimrc.plugin

# dein.vim install
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# `~/.cache/dein`をインストールディレクトリとして使用
sh ./installer.sh ~/.cache/dein

# 過去のものをすべて削除
echo "source $HOME/.vimrc" > $HOME/nvim/init.vim
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
