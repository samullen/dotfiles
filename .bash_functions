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
