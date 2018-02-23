function heroku_db_copy
  set db_a $argv[1]
  set db_b $argv[1]

  heroku pg:backups restore $(heroku pg:backups public-url --app $db_a) DATABASE_URL --app $db_b
end
