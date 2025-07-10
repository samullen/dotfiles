function ls --wraps='eza -F --group-directories-first' --description 'alias ls=eza -F --group-directories-first'
  eza -F --group-directories-first $argv
        
end
