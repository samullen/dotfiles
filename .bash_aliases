alias rbp='. ~/.bash_profile'
alias rbr='. ~/.bashrc'
alias rba='. ~/.bash_aliases'
alias rbf='. ~/.bash_functions'

# alias ls='ls -F --color=auto'
alias ls='exa -F --group-directories-first'
# alias ls='gls --color -F --group-directories-first'
alias lk='ls -lS'
alias ll='ls -l'
alias la='ll -A'
alias lt='ls -al -snew'
alias lsf='ls $(fzf)'
alias c='clear'
alias cat='bat'
alias vimp='/opt/homebrew/bin/nvim -p'
alias vim='/opt/homebrew/bin/nvim'
alias vi='/opt/homebrew/bin/nvim'
alias v='/opt/homebrew/bin/nvim'
alias vimf='nvim $(fzf)'
alias gemdir='cd `gem env gemdir`'
alias resource=". ~/.bash_profile"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# delta aliases
alias d="delta"
alias ds="delta --side-by-side"

# Mac aliases
alias preview='open -a Preview'

# Rails aliases
alias bi='bundle install -j 8'
alias bu='bundle update -j 8'
alias be='bundle exec'
alias ri='ri -f ansi'
alias rc='be rails c'
alias rs='be rails s'
# alias rg='be rails g'
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
alias gb="git branch"
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gco-="git checkout -"
alias gd="git diff"
alias gdc="git diff --cached"
alias gds="git ds"
alias gf="git fetch"
alias ghist="git log -p --"
alias gl="git lol"
alias glf="git log -p --follow --stat --all --"
alias gm="git merge"
alias gmx="git merge --no-ff --log"
alias gp="git push"
alias gpr="git pull --rebase origin"
alias gri="git rebase -i"
alias gs="git status -sb"
alias gw="git show"

# tmux aliases
alias tmuxcp='tmux saveb -|pbcopy && tmux deleteb'
alias tl="tmux ls"

# rust aliases
# alias rc="rustc"
alias cb="cargo build"
alias cbr="cargo build --release"
alias cc="cargo check"
alias cr="cargo run"

# ssh aliases
alias key_update='ssh-add -K ~/.ssh/id_rsa'

# npm aliases
alias rnpm='rm -fr node_modules/ && npm install'

alias sb='echo "################################################################################"'

# Utility aliases
alias tfd="tail -f log/development.log"
alias tft="tail -f log/test.log"

# For M1 macs
alias x86="env /usr/bin/arch -x86_64 /bin/bash --login"
