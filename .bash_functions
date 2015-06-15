# functions
#------------------------------------------------------------------------------#
function f {
	find . -name "*$1*" -print 2> /dev/null
}

function colors {
  for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolour${i}\n"
  done
}

function ta {
  name=$1

  if [ ! $(tmux attach -t $name) ]; then
    basepath="${HOME}/projects/${name}"

    if [ -e $basepath ] && [ -d $basepath ]; then
      echo "Changing directories to ${basepath}"
      cd $basepath
    fi

    tmux new -s $name
  fi
}

function spec {
  if [ -s "bin/rspec" ]; then
    bin/rspec $1
  else
    echo "Install the rspec binstub with the spring-commands-rspec gem"
  fi
}

function rake {
  if [ -s "bin/rake" ]; then
    bin/rake $1
  else
    /usr/bin/env rake
  fi
}

function worktime {
  while read -r line; do
    echo "127.0.0.1 ${line} # WORKTIME"
  done < $HOME/.blocked_sites | sudo tee -a /etc/hosts > /dev/null
}

function slacktime {
  while read -r line; do
    [[ $line =~ "# WORKTIME" ]] && continue
    echo $line
  done < /etc/hosts > /tmp/hosts

  sudo cp /tmp/hosts /etc/hosts
}

function q {
  echo $@ >> "${HOME}/Dropbox/Apps/Notational Data/queue.txt"
}

function heroku_import {
  app=$1
  database=$2
  dumpfile="/tmp/${database}.dump"

  heroku pg:backups capture --app $app
  curl -o $dumpfile `heroku pg:backups public-url --app ${app}`
  pg_restore --verbose --clean --no-acl --no-owner --jobs 4 -d $database $dumpfile
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

