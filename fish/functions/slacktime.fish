function slacktime {
  while read -r line; do
    [[ $line =~ "# WORKTIME" ]] && continue
    echo $line
  done < /etc/hosts > /tmp/hosts

  sudo cp /tmp/hosts /etc/hosts
}
