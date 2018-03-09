#!/usr/bin/env bash
export DATABASE_URL=pgsql://django:django123@db:5432/postgres
export DOCKER_CONFIG=${DOCKER_CONFIG:-docker-compose.yml}
docker-compose -f $DOCKER_CONFIG build
./bin/init-db.sh
docker-compose -f $DOCKER_CONFIG run --rm django makemigrations
docker-compose -f $DOCKER_CONFIG run --rm django migrate
docker-compose -f $DOCKER_CONFIG up
