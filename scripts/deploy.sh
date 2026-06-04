#!/usr/bin/env sh
set -eu

if [ ! -f .env.docker ]; then
    echo "Missing .env.docker. Copy .env.docker.example and fill its secrets first."
    exit 1
fi

docker compose --env-file .env.docker build --pull
docker compose --env-file .env.docker up -d db
docker compose --env-file .env.docker run --rm app php artisan migrate --force
docker compose --env-file .env.docker up -d --remove-orphans
docker compose --env-file .env.docker ps

