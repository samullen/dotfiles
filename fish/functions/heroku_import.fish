function heroku_import
  set app $argv[1]
  set database $argv[2]

  heroku pg:backups capture --app $app; and curl (heroku pg:backups public-url --app $app) | pg_restore --verbose --clean --no-acl --no-owner -d $database
end
