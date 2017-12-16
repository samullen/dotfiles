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

