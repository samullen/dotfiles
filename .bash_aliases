# alias ls='ls -F --color=auto'
alias ls='ls -F'
alias cls='clear; ls'
alias lpr='enscript -C1 -G -M letter --mark-wrapped-lines=plus -T 3 -f fixed8'
alias vi='/usr/local/bin/mvim -v'
alias vim='/usr/local/bin/mvim -v'
alias cpan='sudo perl -MCPAN -eshell'
alias perldoc='perldoc -n "groff -Tascii"'
# alias spec='rspec -c -fs'
alias rspec='rspec -c -fs'
# alias watch="bundle exec watchr spec/specs.watchr"
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

# heroku_aliases
alias hc="heroku run script/rails console"
alias hl="heroku logs"
alias hlt="heroku logs -t"

# tmux aliases
alias tmuxcp='tmux saveb -|pbcopy && tmux deleteb'

# pygments aliases
alias solarpyg='pygmentize -O full,style=solarized'

# alias irb='irb ~/Dropbox/dotfiles/.irbrc'

# ssh aliases
alias key_update='ssh-add ~/.ssh/heroku_rsa'

alias sb='echo "################################################################################"'
