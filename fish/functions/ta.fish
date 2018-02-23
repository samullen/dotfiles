function ta
  set name $argv

  if test ! (tmux attach -t $name)
    set basepath "{$HOME}/projects/{$name}"

    if test -e $basepath; and test -d $basepath
      echo "Changing directories to {$basepath}"
      cd $basepath
    end

    tmux new -s $name
  end
end
