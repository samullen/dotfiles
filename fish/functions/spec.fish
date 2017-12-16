function spec {
  if [ -s "bin/rspec" ]; then
    bin/rspec $1
  else
    echo "Install the rspec binstub with the spring-commands-rspec gem"
  fi
}
