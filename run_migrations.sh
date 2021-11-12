#!/bin/sh

read_var() {
    cat $2 | grep $1= | cut -d '=' -f2
}

PWD=`pwd`
SQL_DIR="$PWD/migrations/sql"

DB_USER=$(read_var DB_USER .env)
DB_PASSWORD=$(read_var DB_PASSWORD .env)
DB_URL="jdbc:$(read_var DB_URL .env)"

docker run --rm --network=host -v ${SQL_DIR}:/flyway/sql flyway/flyway:8-alpine -user=${DB_USER} -password=${DB_PASSWORD} -url=${DB_URL} $1
