function worktime
  while read -r line; do
    echo "127.0.0.1 ${line} # WORKTIME"
    echo "fe80::1%lo0 ${line} # WORKTIME"
    echo "127.0.0.1 www.${line} # WORKTIME"
    echo "fe80::1%lo0 www.${line} # WORKTIME"
  done < $HOME/.blocked_sites | sudo tee -a /etc/hosts > /dev/null
end
