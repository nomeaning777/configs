export LANG=ja_JP.UTF-8
export PATH=$HOME/bin:$HOME/local/work/bin:$HOME/local/bin:$PATH

export LD_LIBRARY_PATH="$HOME/local/lib"
export TEXINPUTS=.:~/texmf:
export EDITOR=vim


if [ "$HOST" = "nest.mma.club.uec.ac.jp" ]; then
  export HTTP_PROXY=http://proxy-east.uec.ac.jp:8080/
  export http_proxy=$HTTP_PROXY
  export HTTPS_PROXY=http://proxy-east.uec.ac.jp:8080/
  export https_proxy=$HTTP_PROXY
  export ftp_proxy=$HTTP_PROXY
  export FTP_PROXY=$HTTP_PROXY
  export no_proxy=127.0.0.1,localhost,nest,.mma.club.uec.ac.jp
  export NO_PROXY=127.0.0.1,localhost,nest,.mma.club.uec.ac.jp
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/.nvm/nvm.sh
