#!/bin/sh

DIR="/home/rockyj/Workspace/02-kotlin/todo-quarkus-gradle/migrations"
USERNAME="postgres"
PASSWORD="postgres"

docker run --rm --network=host -v ${DIR}/sql:/flyway/sql flyway/flyway:8-alpine -user=${USERNAME} -password=${PASSWORD} -url=jdbc:postgresql://localhost:5432/todo_dev $1
