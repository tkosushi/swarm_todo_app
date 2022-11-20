#!/bin/bash -e

# ex)"todo_mysql_master"
SERVICE_NAME=$1

# dind環境のコンテナ内に入るコマンドの生成
docker container exec -it manager \
    docker service ps $SERVICE_NAME \
    --no-trunc \
    --filter "desired-state=running" \
    --format "docker container exec -it {{.Node}} docker container exec -it {{.Name}}.{{.ID}} bash"