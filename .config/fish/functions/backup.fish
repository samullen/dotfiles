function backup
  echo "Changing to FSNotes directory"
  cd ~/projects/notes

  echo "rebasing from master"
  git pull --rebase origin

  echo "Committing changes"
  git add .

  git commit

  echo "Pushing changes"
  git push

  echo "Returning to working directory"
  cd -
end
