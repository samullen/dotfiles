set PATH $PATH $HOME/bin
set PATH $PATH /sbin
set PATH $PATH /usr/sbin
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
set PATH /Applications/Postgres.app/Contents/MacOS/bin $PATH

set EDITOR vim
set PAGER "less -I -R"

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'no'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate ' ↩ '
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'


function fish_prompt
  set last_status $status

  set_color magenta
  printf "[%s] " (date "+%H:%M")
  set_color 990000
  printf "%s " (ruby -v | cut -d ' ' -f1,2)
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf "%s" (__fish_git_prompt)

  printf "\n \$ "
end

function f
 	find . -name "*$argv*" -print 2> /dev/null
end

# function ls
#   builtin ls -F $argv
# end

function cls
  clear; ls
end

function vi
  /usr/local/bin/vim $argv
end

function vim
  /usr/local/bin/vim $argv
end

function rspec
  rspec -c -fs $argv
end

function gemdir
  cd `gem env gemdir`
end

# Rails aliases
function be
  bundle exec $argv
end

function ri
  ri -f ansi
end

function rc
  rails c
end

function rs
  rails s $argv
end

function cuc
  bundle exec cucumber
end

function spec
  bundle exec rspec $argv
end

# HEroku aliases
function hc
  heroku run script/rails console $argv
end

function hl
  heroku logs
end

function hlt
  heroku logs -t $argv
end

# tmux aliases
function tmuxcp
  tmux saveb -|pbcopy and tmux deleteb
end

# pygments aliases
function solarpyg
  pygmentize -O full,style=solarized
end

# ssh aliases
function key_update
  ssh-add ~/.ssh/heroku_rsa
end

function sb
  echo "################################################################################"
end

# Local RC
set CDPATH "."
set CDPATH $CDPATH ~/projects


# SSH Aliases - need to be local
set LINODE 173.255.206.71

function linode
  ssh samullen@$LINODE
end

# alias daily_special='ssh samullen@69.164.197.165'
# 
# export DAILY_SPECIAL='69.164.197.165'
# 
# export CDPATH="."
# export CDPATH="$CDPATH:~/databasically"
# export CDPATH="$CDPATH:~/projects"
# 
# alias qcaldump="ssh health.databasically.com mysqldump -u root -p'p0o9i8U\&Y^T%' quality_calendar_production | mysql -u webuser -pG3n3s1s11 qcal"
# alias qcalstagingdump="ssh health.databasically.com mysqldump -u root -p'p0o9i8U\&Y^T%' quality_calendar_staging | mysql -u webuser -pG3n3s1s11 qcal"
# alias patsatdump="ssh health.databasically.com mysqldump -u root -p'p0o9i8U\&Y^T%' PatientSatisfaction_production | mysql -u webuser -pG3n3s1s11 patient_satisfaction"
# alias authdump="ssh health.databasically.com mysqldump -u root -p'p0o9i8U\&Y^T%' authentication_production | mysql -u webuser -pG3n3s1s11 authentication_development"
# alias dsdump="ssh 69.164.197.165 mysqldump -u webuser -poQSgtV50kc daily_special | mysql -u webuser -pG3n3s1s11 daily_special"
# [[ -f ~/Dropbox/dotfiles/.bashrc ]] && . ~/Dropbox/dotfiles/.bashrc
