# Keep the path clean
pathadd() {
  if [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="${PATH:+"$PATH:"}$1"
  fi
}

#----- User specific environment and startup programs
pathadd "${HOME}/.rbenv/bin"
pathadd "${HOME}/bin"
pathadd $HOME
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
