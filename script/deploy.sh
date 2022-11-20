#!/bin/bash -e
# Swarmによるデプロイ
# コマンドのメモ的なやつ

# ex) stack/todo-mysql.yml
STACK_PATH=$1
# ex) todo_mysql
SERVICE_NAME=$2

docker container exec -it manager \
    docker stack deploy -c $STACK_PATH $SERVICE_NAME