#!/bin/sh

# clear
rm -rf ~/.cache

# dein.vim install
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein

rm -rf ~/.vimrc ~/.vimrc.plugin
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/.vimrc.plugin ~/.vimrc.plugin
