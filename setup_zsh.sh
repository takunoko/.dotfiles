#!/bin/sh -x
# #!/bin/sh -x  # 実行コマンドを出力しながら

# zshがインストールされているか?
if !(type "zsh" > /dev/null 2>&1); then
  echo "zsh is not installed."
  echo "Please install zsh before run this script."
  return -1
fi

# zshpreztoの初期化
while read line
do
  echo "$line" | zsh
done < 'setup_zshprezto.cmd'

echo "source $HOME/.dotfiles/zsh/.zshrc.main" >> $HOME/.zshrc

# # Shellのデフォルトに設定
# echo "chsh -s `which zsh` を実行します。パスワードを入力"
# chsh -s `which zsh`

# gitのaliasを登録。
if [ ! -e $HOME/.gitconfig ]; then
  cp git/gitconfig_default $HOME/.gitconfig
fi
