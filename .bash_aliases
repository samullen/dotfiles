# alias ls='ls -F --color=auto'
alias ls='ls -F'
alias cls='clear; ls'
alias lpr='enscript -C1 -G -M letter --mark-wrapped-lines=plus -T 3 -f fixed8'
alias vi='/usr/local/bin/vim'
alias vim='/usr/local/bin/vim'
# alias psql="/Applications/Postgres.app/Contents/MacOS/bin/psql"
alias cpan='sudo perl -MCPAN -eshell'
alias perldoc='perldoc -n "groff -Tascii"'
alias grep="grep -n -H --color=auto"
alias egrep='egrep -n -H --color=auto'
alias fgrep='fgrep -n -H --color=auto'
alias gemdir='cd `gem env gemdir`'
alias resource=". ~/.bash_profile"

# Mac aliases
alias libreoffice='open -a LibreOffice'
alias preview='open -a Preview'

# Rails aliases
alias be='bundle exec'
alias ri='ri -f ansi'
alias rc='rails c'
alias rs='rails s'
alias rg='rails g'
alias rdbm='rake db:migrate'
alias rdbmt='rake db:migrate db:test:prepare'
alias cuc='bundle exec cucumber'
alias guard='be guard --notify false'

alias powr="touch tmp/restart.txt"

# Git aliases
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gd="git diff"
alias gf="git fetch"
alias gl="git lol"
alias gm="git merge"
alias gmx="git merge --no-ff --log"
alias gp="git push"
alias gpr="git pull --rebase origin"
alias gs="git status -sb"

# heroku_aliases
alias hc="heroku run rails c"
alias hpg="heroku pg:psql"
alias hl="heroku logs"
alias hlt="heroku logs -t"

# tmux aliases
alias tmuxcp='tmux saveb -|pbcopy && tmux deleteb'
alias tl="tmux ls"

# pygments aliases
alias solarpyg='pygmentize -O full,style=solarized'

# alias irb='irb ~/Dropbox/dotfiles/.irbrc'

# ssh aliases
alias key_update='ssh-add ~/.ssh/heroku_rsa'

alias sb='echo "################################################################################"'

# Utility aliases
alias tfd="tail -f log/development.log"
alias tft="tail -f log/test.log"
