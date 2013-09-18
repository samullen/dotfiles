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

function worktime {
  echo "# WORKTIME" | sudo tee -a /etc/hosts > /dev/null
  while read -r line; do
    echo "127.0.0.1 ${line}"
  done < $HOME/.blocked_sites | sudo tee -a /etc/hosts > /dev/null
}

function slacktime {
  flag=0
  while read -r line; do
    [[ $line =~ "# WORKTIME" ]] && flag=1
    [[ $flag -eq 1 ]] && continue
    echo $line
  done < /etc/hosts > /tmp/hosts

  sudo cp /tmp/hosts /etc/hosts
}

function heroku_import {
  app=$1
  database=$2
  dumpfile="/tmp/${database}.dump"

  heroku pgbackups:capture --app $app
  curl -o $dumpfile `heroku pgbackups:url --app ${app}`
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

