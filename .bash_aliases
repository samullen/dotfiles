# alias ls='ls -F --color=auto'
alias ls='ls -F'
alias c='clear'
alias cat='bat'
alias vim='/usr/local/bin/vim'
alias vi='/usr/local/bin/vim'
alias v='/usr/local/bin/vim'
alias vimf='vim $(fzf)'
alias gemdir='cd `gem env gemdir`'
alias resource=". ~/.bash_profile"

# Mac aliases
alias preview='open -a Preview'

# Rails aliases
alias bi='bundle install -j 8'
alias bu='bundle update -j 8'
alias be='bundle exec'
alias ri='ri -f ansi'
alias rc='be rails c'
alias rs='be rails s'
alias rg='be rails g'
alias rdbm='be rake db:migrate'
alias rdbmt='be rake db:migrate; rake db:test:prepare'
alias guard='be guard --notify false'

alias powr="touch tmp/restart.txt"
alias prd="be pronto run -c development"

# Phoenix aliases
alias mix='env $([ -f .env ] && cat .env | xargs) mix'
alias iex='env $([ -f .env ] && cat .env | xargs) iex'
alias mpc='iex -S mix'
alias mps='mix phx.server'

# Git aliases
alias ga="git add"
alias fga="git add $(git status -s | cut -c 4- | fzf -m --bind 'space:toggle+beginning-of-line+kill-line')"
alias gb="git branch"
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gd="git diff"
alias gdc="git diff --cached"
alias gf="git fetch"
alias gl="git lol"
alias gm="git merge"
alias gmx="git merge --no-ff --log"
alias gp="git push"
alias gpr="git pull --rebase origin"
alias gri="git rebase -i"
alias gs="git status -sb"

# heroku_aliases
alias heroku="/usr/local/bin/heroku"
alias hc="heroku run rails c"
alias hpg="heroku pg:psql"
alias hl="heroku logs"
alias hlt="heroku logs -t"

# tmux aliases
alias tmuxcp='tmux saveb -|pbcopy && tmux deleteb'
alias tl="tmux ls"

# ssh aliases
alias key_update='ssh-add ~/.ssh/heroku_rsa'

alias sb='echo "################################################################################"'

# Utility aliases
alias tfd="tail -f log/development.log"
alias tft="tail -f log/test.log"
