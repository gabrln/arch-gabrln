#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="$HOME/.local/bin:$PATH"

source "$HOME/.atuin/bin/env"

export ATUIN_NOBIND="true"
eval "$(atuin init bash)"

atuin-bind '\C-r' atuin-search
atuin-bind '\e[A' atuin-up-search
atuin-bind '\eOA' atuin-up-search

eval "$(starship init bash)"
