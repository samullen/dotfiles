function spec
  if test -s "bin/rspec"
    bin/rspec $argv
  else
    echo "Install the rspec binstub with the spring-commands-rspec gem"
  end
end
