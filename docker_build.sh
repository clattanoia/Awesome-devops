#!/bin/bash
docker pull clattanoia/devops:latest && docker stop devops && docker rm devops && docker run -d --name devops -p 8080:3000 clattanoia/devops:latest