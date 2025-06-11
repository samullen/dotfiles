function backup
  echo "Changing to FSNotes directory"
  cd ~/Library/Mobile\ Documents/iCloud~co~fluder~fsnotes/Documents

  echo "Committing changes"
  git add .

  git commit

  echo "Pushing changes"
  git push

  echo "Returning to working directory"
  cd -
end
