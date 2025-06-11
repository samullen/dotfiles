function ta
  set name $argv[1]

  if test ! $(tmux attach -t $name)
    set basepath "$HOME/projects/$name"

    if test -e $basepath && test -d $basepath
      echo "Changing directories to $basepath"
      cd $basepath
    end

    tmux new -s $name
  end
end

