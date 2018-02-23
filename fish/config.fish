set -U fish_user_paths $HOME/bin $HOME $HOME/.rbenv/shims $fish_user_paths

set CDPATH . ~/projects ~/code ~/playground

set -x FIGNORE .svn .swp .gitkeep # Ignore files with these suffixes
set -x EDITOR vim
set -x PAGER "less -I -R"
set -x PGHOST "localhost"

set -g fish_prompt_pwd_dir_length 0

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

fish_vi_key_bindings

if test -f $HOME/.config/fish/aliases.fish
  source $HOME/.config/fish/aliases.fish
end

# rbenv
rbenv rehash
