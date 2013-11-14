#----- User specific environment and startup programs
PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
PATH=$HOME/.rbenv/bin:$PATH
PATH=$PATH:$HOME/.rbenv/bin
PATH=$PATH:$HOME/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:$HOME
PATH=$PATH:.
export PATH

export PS1='\h \w \$ '
export HISTCONTROL=ignoredups
export EDITOR=vim
export CVSEDITOR=vim
export CVSROOT=/cvs

#----- Prepare DIRSTACK for cd function in .bashrc -----#
#unset DIRSTACK[@]
#DIRSTACK[0]=$HOME

umask 002

unset USERNAME

if [ -f `brew --prefix`/etc/bash_completion ]; then
 . `brew --prefix`/etc/bash_completion
fi

#----- Get the aliases and functions
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.bashrc.local ]] && . ~/.bashrc.local

eval "$(rbenv init -)"
