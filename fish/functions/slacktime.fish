function slacktime
  for line in (read -a)
    test $line =~ "# WORKTIME"; and continue
    echo $line
  end < /etc/hosts > /tmp/hosts

  sudo cp /tmp/hosts /etc/hosts
end
