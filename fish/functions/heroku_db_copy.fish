function heroku_db_copy {
  db_a=$1
  db_b=$2

  heroku pg:backups restore $(heroku pg:backups public-url --app $db_a) DATABASE_URL --app $db_b
}
