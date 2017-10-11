# ssh-copy-id remote-machine/

# Global Variables
export FIGNORE=.svn:.swp:.gitkeep # Ignore files with these suffixes
export HISTCONTROL=ignoredups
export EDITOR=vim
export PAGER="less -I -R"

# Settings
#------------------------------------------------------------------------------#
set -o vi

# eval `dircolors ~/.dir_colors`

LS_COLORS='no=00:fi=00:di=00;36:ln=01;37:pi=40;33:so=00;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:';
export LS_COLORS
export CLICOLOR=1
export LSCOLORS=gxfxCxDxdxegedabagacad
# export LSCOLORS

export CDPATH=.:$HOME/projects:$HOME/code:$HOME/sandbox

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bash_functions ]] && . ~/.bash_functions
[[ -f ~/.bash_todos ]] && . ~/.bash_todos

# PS1="\[$red\]\$git_branch\[$normal_colours\] \w \$ "
PS1="${magenta}[\A]${reset_color} ${green}\w${reset_color} \$git_branch\n \$ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
