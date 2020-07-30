#!/bin/sh

exit "未完成。完成させられたら使う。"
exit 1

# neovimをインスコと設定する。
# brewは入っている設定。mac向け

SHELLRC="$HOME/.zshrc" # 環境変数を保存するシェル

## エラー処理
# OSがMacであるか?
if !([ "$(uname)" == 'Darwin' ]); then
  echo "Macでのみ利用可能なコマンドです"
  exit 1
fi

# brewがインストールされているか?
if !(type "brew" > /dev/null 2>&1); then
  echo "brew がインストールされていません"
  exit 1
fi


# pyenvのインスコ
if !(type "pyenv" > /dev/null 2>&1); then
  brew install pyenv
  # パスを通す
  export PYENV_ROOT="$HOME/.pyenv
  export PATH="$PYENV_ROOT/bin:$PATH
  eval "$(pyenv init -)"

  echo ''' # pyenv用のパス
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"''' >> $SHELLRC
fi

if !(type "pyenv-virtualenv" > /dev/null 2>&1); then
  brew install pyenv-virtualenv
  eval "$(pyenv virtualenv-init -)"
  echo 'eval "$(pyenv virtualenv-init -)"' >> $SHELLRC
fi

brew install ctags neovim # プラグインで必要な何か

# zshrcにパスを通す処理を書いておく

## python環境は2020.4.15 最新
## たぶんlatestとかしたほうが賢い。
# python2環境
pyenv install 2.7.17
pyenv virtualenv 2.7.17 neovim2
pyenv activate neovim2
pip2 install --upgrade pip
pip2 install neovim

#python3環境
pyenv install 3.8.2
pyenv virtualenv 3.8.2 neovim3
pyenv activate neovim3
pip install --upgrade pip
pip install neovim

# .vimrcにpythonへのパスを追記
echo '''" それぞれのpythonバージョンへのパス
let g:python_host_prog = $PYENV_ROOT."/versions/neovim2/bin/python"
let g:python3_host_prog = $PYENV_ROOT."/versions/neovim3/bin/python"''' >> $HOME/.vimrc
