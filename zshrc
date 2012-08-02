export LANG=ja_JP.UTF-8

export PATH=$HOME/bin:$HOME/local/work/bin:$HOME/local/bin:$PATH

autoload -U compinit
compinit

autoload colors
colors

PROMPT="%{${fg[yellow]}%}[%n@%m] %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[yellow]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[yellow]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
RPROMPT="%{${fg[cyan]}%}[%~]%{${reset_color}%}"

setopt autopushd

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt hist_ignore_dups
setopt share_history
setopt auto_cd
setopt cdable_vars

setopt correct

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Linux
alias ls="ls --color"

# FreeBSD
# alias ls="ls -G"

# Solaris
# alias ls='gls -F --color=auto'
alias ll="ls -l"
alias la="ls -a"

alias vi="vim"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

export LD_LIBRARY_PATH="$HOME/local/lib"

export TEXINPUTS=.:~/texmf:

bindkey -e
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

export EDITOR=vim

# 固有の設定
source ~/etc/conf.sh

