#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function cd {
    builtin cd "$@" && ls -F
}

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
