function gta
  if test (count $argv) -ne 1
    echo "Usage: gta <branch-name>"
    return 1
  end

  set branch_name $argv[1]
  set project_dir (basename (pwd))
  set worktree_name "$project_dir-$branch_name"

  git worktree add -b $branch_name "../$worktree_name"
end
