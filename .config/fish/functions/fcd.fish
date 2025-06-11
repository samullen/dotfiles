function fcd
  set dir $(fd -t d | fzf +m) && cd $dir
end
