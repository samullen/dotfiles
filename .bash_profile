# Keep the path clean
pathadd() {
  if [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="${PATH:+"$PATH:"}$1"
  fi
}

#----- User specific environment and startup programs
pathadd "${HOME}/bin"
pathadd "/Applications/Postgres.app/Contents/Versions/latest/bin"
pathadd $HOME
if [ -d  "/opt/homebrew/bin" ]; then
  pathadd "/opt/homebrew/opt/openjdk/bin"
  pathadd "/opt/homebrew/bin"
else
  pathadd "/usr/local/opt/openjdk/bin"
  pathadd "/usr/local/bin"
fi
export PATH

export PS1='\h \w \$ '
export HISTCONTROL=ignoredups
export EDITOR=vim
export CVSEDITOR=vim
export CVSROOT=/cvs

# Mac Only
export BASH_SILENCE_DEPRECATION_WARNING=1

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
. "$HOME/.cargo/env"
