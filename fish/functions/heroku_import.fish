function heroku_import {
  app=$1
  database=$2

  heroku pg:backups capture --app $app && curl `heroku pg:backups public-url --app ${app}` | pg_restore --verbose --clean --no-acl --no-owner -d $database
}
