function fish_prompt --description 'Informative prompt'
  set -g __fish_git_prompt_color_flags yellow
  set -g __fish_git_prompt_showdirtystate yes
  set -g __fish_git_prompt_showuntrackedfiles yes
  set -g __fish_git_prompt_char_dirtystate +
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_char_untrackedfiles ?
  set -g __fish_git_prompt_color_suffix red

  if functions -q fish_is_root_user; and fish_is_root_user
    printf '%s[%s] %s%s%s%s%s \n # ' (set_color magenta) (date "+%H:%M") (set_color green) (prompt_pwd --full-length-dirs=1) (set_color red) (fish_git_prompt) (set_color normal)
  else
    printf '%s[%s] %s%s%s%s%s \n $ ' (set_color magenta) (date "+%H:%M") (set_color green) (prompt_pwd --full-length-dirs=1) (set_color red) (fish_git_prompt) (set_color normal)
  end
end
