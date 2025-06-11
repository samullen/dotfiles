if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH /Users/samuelmullen/.asdf/shims:/opt/homebrew/opt/asdf/libexec/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/samuelmullen/.cargo/bin:/opt/homebrew/sbin:/Users/samuelmullen/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/samuelmullen:/opt/homebrew/opt/openjdk/bin:/opt/homebrew/bin

set -gx FIGNORE .svn:.swp:.gitkeep # Ignore files with these suffixes
set -gx HISTFILESIZE 10000
set -gx HISTSIZE 10000
set -gx HISTCONTROL ignoredups
set -gx HISTIGNORE "ls:bg:fg:history"
set -gx HISTTIMEFORMAT "%F %T"
set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx PAGER "less -I -R"
set -gx CDPATH .:$HOME/projects:$HOME/code:$HOME/sandbox

set -gx HOMEBREW_PREFIX "/opt/homebrew";
set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/opt/homebrew";

set -gx TMUXAI_OPENROUTER_API_KEY "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"


if test -d  "/opt/homebrew/bin"
  set -gx PATH "/opt/homebrew/sbin:$PATH";
  set -gx MANPATH "/opt/homebrew/share/man:$MANPATH";
  set -gx INFOPATH "/opt/homebrew/share/info:$INFOPATH";
else
  set -gx PATH "/usr/local/sbin:$PATH";
  set -gx MANPATH "/usr/local/share/man:$MANPATH";
  set -gx INFOPATH "/usr/local/share/info:$INFOPATH";
end

set -gx LS_COLORS 'no=00:fi=00:di=00;36:ln=01;37:pi=40;33:so=00;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:';
set -gx CLICOLOR 1
set -gx LSCOLORS gxfxCxDxdxegedabagacad

# use `fd` for finding files. respects .gitignore: just type fzf
set -gx FZF_DEFAULT_COMMAND 'fd --type f'

if test -f ~/.npmrc
  set -gx NPM_TOKEN `ag "authToken=npm" ~/.npmrc | cut -d'=' -f2`
end

# keep IEx history between sessions
export ERL_AFLAGS="-kernel shell_history enabled"

# Turn off Alacritty icon bounce
printf "\e[?1042l"

# VI Mode and Key Bindings
set -g fish_key_bindings fish_vi_key_bindings

# ctrl-n accepts tab completion
bind --mode insert ctrl-l forward-word

# bind --mode insert ctrl-lctrll complete

abbr -a cd z
abbr -a ls eza -F --group-directories-first
abbr -a lk eza -lS
abbr -a ll eza -l
abbr -a la eza -A
abbr -a lt eza -al -snew
abbr -a lsf eza '$(fzf)'
abbr -a c clear
abbr -a cat bat -p -P

if [ -d  "/opt/homebrew/bin" ]
  abbr -a vimp /opt/homebrew/bin/nvim -p
  abbr -a vim /opt/homebrew/bin/nvim
  abbr -a vi /opt/homebrew/bin/nvim
  abbr -a v /opt/homebrew/bin/nvim
else
  abbr -a vimp /usr/local/bin/nvim -p
  abbr -a vim /usr/local/bin/nvim
  abbr -a vi /usr/local/bin/nvim
  abbr -a v /usr/local/bin/nvim
end

abbr -a vimf nvim '$(fzf)'
abbr -a gemdir cd '`gem env gemdir`'

abbr -a .. cd ..
abbr -a ... cd ../..
abbr -a .... cd ../../..

# delta abbr -aes
abbr -a d delta
abbr -a ds delta --side-by-side

# Mac abbr -aes
abbr -a preview open -a Preview

# Rails abbr -aes
abbr -a bi bundle install -j 8
abbr -a bu bundle update -j 8
abbr -a be bundle exec
abbr -a ri ri -f ansi
abbr -a rc be rails c
abbr -a rs be rails s
# abbr -a rg be rails g
abbr -a rdbm be rake db:migrate
abbr -a rdbmt be 'rake db:migrate; rake db:test:prepare'
abbr -a guard be guard --notify false

abbr -a powr touch tmp/restart.txt
abbr -a prd be pronto run -c development

# # Phoenix abbr -aes
abbr -a mix env $([ -f .env ] && cat .env | xargs) mix
abbr -a iex env $([ -f .env ] && cat .env | xargs) iex
abbr -a mpc iex -S mix
abbr -a mps mix phx.server

# Git abbr -aes
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit
abbr -a gcm git commit -m
abbr -a gco git checkout
abbr -a gcob git checkout -b
abbr -a gd git diff
abbr -a gdc git diff --cached
abbr -a gds git ds
abbr -a gf git fetch
abbr -a ghist git log -p --
abbr -a gl git lol
abbr -a glf git log -p --follow --stat --all --
abbr -a gm git merge
abbr -a gmx git merge --no-ff --log
abbr -a gp git push
abbr -a gpr git pull --rebase origin
abbr -a gri git rebase -i
abbr -a gs git status -sb
abbr -a gw git show

# tmux abbr -aes
abbr -a tmuxcp tmux saveb -|pbcopy && tmux deleteb
abbr -a tl tmux ls

# AI/ML abbr -aes
abbr -a ai ollama run llama3.2
abbr -a aim ollama run

# ssh abbr -aes
abbr -a key_update ssh-add -K ~/.ssh/id_rsa

# npm abbr -aes
# abbr -a rnpm rm -fr node_modules/ && npm install

abbr -a sb echo "################################################################################"

# Utility abbr -aes
abbr -a tfd tail -f log/development.log
abbr -a tft tail -f log/test.log
abbr -a swp_clean find ~/tmp -maxdepth 1 -type f -name '*.sw?' -mtime +7 -delete

# For M1 macs
abbr -a x86 env /usr/bin/arch -x86_64 /bin/bash --login

abbr -a be doppler run bundle exec
abbr -a rs doppler run bundle exec rails s
abbr -a rc doppler run bundle exec rails c
abbr -a rt doppler run bundle exec rails test

abbr -a gemdir cd `gem env gemdir`

zoxide init fish | source
