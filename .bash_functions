# functions
#------------------------------------------------------------------------------#
function f {
  echo "use fd"
	# find . -name "*$1*" -print 2> /dev/null
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
    echo "fe80::1%lo0 ${line} # WORKTIME"
    echo "127.0.0.1 www.${line} # WORKTIME"
    echo "fe80::1%lo0 www.${line} # WORKTIME"
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
  if [[ ${#*} > 0 ]]; then
    echo $@ >> "${HOME}/Dropbox/Apps/Notational Data/queue.md"
  else
    cat "${HOME}/Dropbox/Apps/Notational Data/queue.md"
  fi
}

# FZF functions

# cd + fzf
fcd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fzf and command history
fh() {
  eval $(fc -l 1 | cut -f 2 | fzf +s --tac)
}

# Git add and FZF
function fga() {
  git add $(git status -s | cut -c 4- | fzf -m --bind "space:toggle+beginning-of-line+kill-line")
}

function heroku_import {
  app=$1
  database=$2

  heroku pg:backups capture --app $app && curl `heroku pg:backups public-url --app ${app}` | pg_restore --verbose --clean --no-acl --no-owner -d $database
}

function heroku_db_copy {
  db_a=$1
  db_b=$2

  heroku pg:backups restore $(heroku pg:backups public-url --app $db_a) DATABASE_URL --app $db_b
}

function backup {
  message=${1:-"Daily backup"}

  echo "Changing to FSNotes directory"
  cd ~/Library/Mobile\ Documents/iCloud~co~fluder~fsnotes/Documents

  echo "Committing changes"
  ga .

  gc

  echo "Pushing changes"
  gp

  echo "Returning to working directory"
  cd -
}

# Dependecy Graph

function dg {
  # https://www.netlify.com/blog/2018/08/23/how-to-easily-visualize-a-projects-dependency-graph-with-dependency-cruiser/
  depcruise --exclude "^node_modules" --max-depth 2 --output-type dot $1 | dot -Tpng > $2
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

