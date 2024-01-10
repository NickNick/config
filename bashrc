# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source "$HOME/config/shellrc"

try_source /usr/share/doc/pkgfile/command-not-found.bash

shopt -s checkwinsize
shopt -s histappend
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000

[ -f $HOME/.bashrc.local ] && source $HOME/.bashrc.local
