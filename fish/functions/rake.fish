function rake
  if test -s "bin/rake"
    bin/rake $1
  else
    /usr/bin/env rake
  end
end
