echo "Start zshprezto initialize"

# 過去のファイルを削除
rm -rf ${ZDOTDIR:-$HOME}/.zprezto ${ZDOTDIR:-$HOME}/zsh_orig .zlogin .zlogout .zpreztorc .zprofile .zshenv .zshrc
mkdir zsh_orig && mv $HOME/.zshrc zsh_orig # 古いファイルの避難 

# prezto本体。(--recursiveでサブモジュールも一緒にclone)
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# zshでgitコマンドをつかうときに自動で^をエスケープしてくれるプラグイン
curl https://raw.githubusercontent.com/knu/zsh-git-escape-magic/master/git-escape-magic > ${ZDOTDIR:-$HOME}/.zprezto/modules/prompt/functions/git-escape-magic
 
# add zprezto original ".zshrc"
# echo "source '${ZDOTDIR:-$HOME}/.zprezto/init.zsh'" >> $HOME/.zshrc

# setup
setopt EXTENDED_GLOB; for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"; done

echo "Finish zshprezto initialize"
echo "Please start zsh"
