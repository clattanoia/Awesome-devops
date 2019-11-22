#!/bin/sh
docker pull clattanoia/devops:latest && 
docker stop devops || true && 
docker rm devops || true && 
docker run -d --name devops -p 8080:3000 clattanoia/devops:latest