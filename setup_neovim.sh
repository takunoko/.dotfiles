#!/bin/sh -x

set -e  # エラー時に即座に終了

# 過去の設定をすべて初期化
rm -rf ~/.vimrc ~/.vimrc.plugin
rm -rf $HOME/nvim/init.vim
rm -rf $HOME/.config/nvim

# dein.vimのインストール
DEIN_INSTALL_DIR="$HOME/.cache/dein"
rm -rf "${DEIN_INSTALL_DIR}"
mkdir -p "${DEIN_INSTALL_DIR}"

echo "Installing dein.vim to ${DEIN_INSTALL_DIR}..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh)" -- "${DEIN_INSTALL_DIR}"

# インストール確認
if [ -d "${DEIN_INSTALL_DIR}" ]; then
    echo "dein.vim installation completed successfully"
else
    echo "dein.vim installation failed" >&2
    exit 1
fi

# neovimの設定
mkdir -p $HOME/.config/nvim
rm -rf ~/.config/nvim/init.vim
ln -s ~/.dotfiles/vim/nvim/init.vim ~/.config/nvim/init.vim
