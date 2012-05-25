# ssh-copy-id remote-machine

# Global Variables
export FIGNORE=.svn # Ignore subversion directories with filename completion
export HISTCONTROL=ignoredups
export EDITOR=vim
export PAGER="less -I -R"

# Sets
#------------------------------------------------------------------------------#
set -o vi

# Aliases
#------------------------------------------------------------------------------#
# eval `dircolors ~/.dir_colors`

LS_COLORS='no=00:fi=00:di=00;36:ln=01;37:pi=40;33:so=00;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:';
export LS_COLORS
export CLICOLOR=1
export LSCOLORS=gxfxCxDxdxegedabagacad
# export LSCOLORS

# alias ls='ls -F --color=auto'
alias ls='ls -F'
alias cls='clear; ls'
alias lpr='enscript -C1 -G -M letter --mark-wrapped-lines=plus -T 3 -f fixed8'
alias vi='/usr/local/bin/mvim -v'
alias vim='/usr/local/bin/mvim -v'
alias cpan='sudo perl -MCPAN -eshell'
alias perldoc='perldoc -n "groff -Tascii"'
alias spec='rspec -c -fs'
alias rspec='rspec -c -fs'
alias watch="bundle exec watchr spec/specs.watchr"
alias grep="grep -n -H --color=auto"
alias egrep='egrep -n -H --color=auto'
alias fgrep='fgrep -n -H --color=auto'
alias gemdir='cd `gem env gemdir`'

# Mac aliases
alias libreoffice='open -a LibreOffice'
alias preview='open -a Preview'

# Rails aliases
alias be='bundle exec'
alias ri='ri -f ansi'
alias rc='rails c'
alias rs='rails s'
alias cuc='bundle exec cucumber'
alias spec='bundle exec rspec'
alias guard='be guard --notify false'

# tmux aliases
alias tmuxcp='tmux saveb -|pbcopy && tmux deleteb'

# alias irb='irb ~/Dropbox/dotfiles/.irbrc'

# functions
#------------------------------------------------------------------------------#
function f {
	find . -name "*$1*" -print 2> /dev/null
}

function sb {
	echo '################################################################################'
}

# function ri {
#   ri -f ansi $1 | less -R -I
# }

function downcase {
  for fullpath in "$@"; do
    path=$(dirname $fullpath)
    file=${fullpath##*/}

    smallfile=$(echo $file | tr '[A-Z]' '[a-z]')
    newfile="$path/$smallfile"

    if [ $file != $smallfile ]; then
      if [ -e $newfile ]; then
        echo "Can't downcase '$file', a file matching that name already exists."
      elif [ -e $fullpath ]; then
        echo "Renaming $fullpath to $newfile"
        mv $fullpath $newfile
      else
        echo $fullpath "not found or is not a normal file. Skipping..."
      fi
    fi
  done
}

#----- code for adding git branch to prompt -----#
black=$'\e[0;30m'
red=$'\e[0;31m'
green=$'\e[0;32m'
yellow=$'\e[0;33m'
blue=$'\e[0;34m'
magenta=$'\e[0;35m'
cyan=$'\e[0;36m'
white=$'\e[0;37m'
orange=$'\e[33;40m'
reset_color=$'\e[m'

GIT_PROMPT_PREFIX="$red["
GIT_PROMPT_SUFFIX="$red]$reset_color"
GIT_PROMPT_DIRTY=""

function git_dirty {
  if [[ -n $(git status -s 2> /dev/null) ]]; then
    GIT_PROMPT_DIRTY=" ${yellow}+"
  else
    GIT_PROMPT_DIRTY=""
  fi
}

function find_git_branch {
  local dir=. head

  until [ "$dir" -ef / ]; do
    if [ -f "$dir/.git/HEAD" ]; then
      head=$(< "$dir/.git/HEAD")
      if [[ $head == ref:\ refs/heads/* ]]; then
        git_branch="${GIT_PROMPT_PREFIX}${head#*/*/}${GIT_PROMPT_DIRTY}${GIT_PROMPT_SUFFIX}"
      elif [[ $head != '' ]]; then
        git_branch='(detached)'
      else
        git_branch='(unknown)'
      fi
      return
    fi
    dir="../$dir"
  done
  git_branch=''
}
PROMPT_COMMAND="git_dirty; find_git_branch; $PROMPT_COMMAND"

# PS1="\[$red\]\$git_branch\[$normal_colours\] \w \$ "
PS1="${magenta}[\A]${reset_color} ${green}\w${reset_color} \$git_branch\n \$ "

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

function colors {
  for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolour${i}\n"
  done
}
