function gtr
  if test (count $argv) -ne 1
    echo "Usage: gtr <branch-name>"
    return 1
  end

  set branch_name $argv[1]
  set project_dir (basename (pwd))
  set worktree_name "$project_dir-$branch_name"

  git worktree remove "../$worktree_name"
  git branch -D $branch_name
end
