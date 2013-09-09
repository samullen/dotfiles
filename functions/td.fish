function tdadd
  cat >> ~/Dropbox/todos.txt
end

function tdls
  cat ~/Dropbox/todos.txt
end

function tdedit
  vim ~/Dropbox/todos.txt
end

function tds 
  ag -i $argv ~/Dropbox/todos.txt
end

function td
  switch $argv[1]
  case add
    tdadd 
  case edit
    tdedit
  case ls
    tdls
  case search
    tds $argv[2]
  end
end
