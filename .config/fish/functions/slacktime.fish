function slacktime
  grep -v "# WORKTIME" /etc/hosts | sudo tee /etc/hosts > /dev/null
end
