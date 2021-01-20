# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
HISTFILE="$HOME/.bash_history"
SAVEHIST=$HISTSIZE
shopt -s histappend # append to history file

export EDITOR=vim
