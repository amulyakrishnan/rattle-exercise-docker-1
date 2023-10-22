#!/bin/bash

# create a repository to store the docker image in docker hub
# build the docker image
docker build -t hello-world-app .

# login to your docker hub account
cat my_password.txt | docker login --username amulyakrishnan123 --password-stdin

# use the docker tag command to give the image a new name
docker tag hello-world-app amulyakrishnan123/hello-world-excerise:latest

# push the image to your docker hub repository
docker push amulyakrishnan123/hello-world-excerise:latest

# start the container to test the image 
docker run -dp 8080:80 amulyakrishnan123/hello-world-excerise:latest