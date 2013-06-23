autoload -U compinit
compinit

autoload colors
colors

autoload -Uz vcs_info
zstyle ':vcsinfo:*' formats '%s:%b|'
zstyle ':vcsinfo:*' actionformats '%s:%b%a|'
function vcs_prompt_info(){
  LANG=C vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && echo "$vcs_info_msg_0_"
}

# 右側にはコマンドのステータスとパスを表示する
function echo_rprompt(){
  if [ $? = 0 ]
  then
    print "%{${fg[cyan]}%}%{${reset_color}%}" 
  else
    print "%{${fg[red]}%} status:%? %{${reset_color}%}" 
  fi
}

VCS=""

PROMPT="
"$'%{${fg[yellow]}%}[%n@%m]: \e[${color[bold]}m${fg[cyan]}%~ ${reset_color}\e[32m(\`date +\"%y/%m/%d %H:%M:%S\"\`)'"
%{${fg[yellow]}%}$ %{${reset_color}%}"
PROMPT2="%{${fg[yellow]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[yellow]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
setopt prompt_subst
RPROMPT='`echo_rprompt`%B%{$fg[red]%}`vcs_prompt_info`%f%{${reset_color}%}'

setopt autopushd

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

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

alias emacs="emacs -nw"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

bindkey -e
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
