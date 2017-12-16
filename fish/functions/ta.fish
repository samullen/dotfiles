function ta {
  name=$1

  if [ ! $(tmux attach -t $name) ]; then
    basepath="${HOME}/projects/${name}"

    if [ -e $basepath ] && [ -d $basepath ]; then
      echo "Changing directories to ${basepath}"
      cd $basepath
    fi

    tmux new -s $name
  fi
}
