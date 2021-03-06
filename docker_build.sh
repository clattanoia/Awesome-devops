#!/bin/sh

IMAGE_NAME="clattanoia/devops:latest"
CONTAINER_NAME="devops"

docker pull $IMAGE_NAME && 
docker stop $CONTAINER_NAME || true && 
docker rm $CONTAINER_NAME || true && 
docker run -d --name $CONTAINER_NAME -p 8080:3000 $IMAGE_NAME