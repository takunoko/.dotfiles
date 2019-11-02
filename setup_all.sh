#!/bin/bash
printf "vim関連の初期設定を行います\nよろしいですか？ [y/n]"
read input
if [ "$input" = "y" ]
then
  sh ./setup_vim.sh
fi

printf "Zsh関連の初期設定を行います\nよろしいですか？ [y/n]"
read input
if [ "$input" = "y" ]
then
  sh ./setup_zsh.sh
fi

