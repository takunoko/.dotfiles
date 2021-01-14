#!/bin/sh

# 過去になにかあってもすべて削除
rm -rf ~/.cache
rm -rf ~/.vimrc ~/.vimrc.plugin

# dein.vim install
mkdir tmp
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > tmp/installer.sh
# `~/.cache/dein`をインストールディレクトリとして使用
rm -rf ~/.cache/dein
sh ./tmp/installer.sh ~/.cache/dein

# 過去のものをすべて削除
rm -f $HOME/nvim/init.vim
mkdir $HOME/nvim
echo "source $HOME/.vimrc" > $HOME/nvim/init.vim
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
