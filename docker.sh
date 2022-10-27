#!/bin/sh

#--> Docker cheatsheet

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Login docker
docker login

# Manage images
docker [image ls] // [images]
docker pull IMAGE
docker push IMAGE
docker rmi IMAGE
docker image prune -a
docker build .
docker build -t IMAGE .

# Manage containers
docker [container ls] // ps
docker rm -f CONTAINER
docker container prune
docker stop CONTAINER
docker start CONTAINER
docker exec -it CONTAINER EXECUTABLE

# Run a new container
docker run -d -p 8080:80 --name CONTAINER_NAME CONTAINER
docker run IMAGE
docker run --name CONTAINER_NAME IMAGE
docker run -p HOSTPORT:CONTAINERPORT IMAGE
docker run -P image
docker run -d IMAGE



#--> Docker-compose.yml
docker-compose start
docker-compose stop

docker-compose pause
docker-compose unpause

docker-compose ps
docker-compose up
docker-compose down


