# 関連ファイルをいろいろ読み込むよ
source ~/.zshrc.main
source ~/.zshrc.path
source ~/.zshrc.prompt

case "${OSTYPE}" in
    #Mac(Unix)
darwin*)
    source ~/.zshrc.mac
    ;;
linux*)
    source ~/.zshrc.linux
    ;;
esac

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
