# Git add and FZF
function fga
  git add $(git status -s | cut -c 4- | fzf -m --bind "space:toggle+beginning-of-line+kill-line")
end
