# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -G'
alias grep='grep --color=tty -d skip'
alias cp='cp -i'

export EDITOR=vim
export PAGER=less

man() {
   env LESS_TERMCAP_mb=$'\E[01;31m' \
      LESS_TERMCAP_md=$'\E[01;38;5;74m' \
      LESS_TERMCAP_me=$'\E[0m' \
      LESS_TERMCAP_se=$'\E[0m' \
      LESS_TERMCAP_so=$'\E[38;5;246m' \
      LESS_TERMCAP_ue=$'\E[0m' \
      LESS_TERMCAP_us=$'\E[04;38;5;146m' \
      man "$@"
}

PS1="\$(if [[ \j != 0 ]]; then echo \"[\j] \"; fi)\$(if [[ \$? == 0 ]]; then echo \"\[\033[0;36m\]\"; else echo \"\[\033[0;35m\]\"; fi)\w\n\[\033[0m\]"
PATH=$PATH:/home/benjamin/.cabal/bin

function pd
{
   if [[ -n $1 ]]; then pushd $1; else popd; fi
}
