# fzf and command history
function fh
  eval $(history | fzf +s --tac)
end
