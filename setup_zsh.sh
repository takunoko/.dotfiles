#!/bin/sh

# 過去のファイルを削除
rm -rf "${ZDOTDIR:-$HOME}/.zprezto"
rm -rf "${ZDOTDIR:-$HOME}/zsh_orig"

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
mkdir zsh_orig && mv zshmv .zlogin .zlogout .zprofile .zshenv  zsh_orig
 
# add zprezto original ".zshrc"
echo "source '${ZDOTDIR:-$HOME}/.zprezto/init.zsh'" >> $HOME/.zshrc
echo "source .dotfiles/zsh/.zshrc.main" >> $HOME/.zshrc

# Shellのデフォルトに設定
# chsh -s /bin/zsh

curl https://raw.githubusercontent.com/knu/zsh-git-escape-magic/master/git-escape-magic > ${ZDOTDIR:-$HOME}/.zprezto/modules/prompt/functions/git-escape-magic

# zsh環境じゃなきゃ実行できない。。(/bin/shじゃ駄目)
# 手動で実行しよう。
echo '
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
'
echo "setopt EXTENDED_GLOB\nを実行してください"
