function rake {
  if [ -s "bin/rake" ]; then
    bin/rake $1
  else
    /usr/bin/env rake
  fi
}
