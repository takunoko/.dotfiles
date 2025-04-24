#!/bin/bash
printf "nvim関連の初期設定を行います\nよろしいですか？ [y/n]"
read input
if [ "$input" = "y" ]
then
  sh ./setup_neovim.sh
fi

printf "Zsh関連の初期設定を行います\nよろしいですか？ [y/n]"
read input
if [ "$input" = "y" ]
then
  sh ./setup_zsh.sh
fi

