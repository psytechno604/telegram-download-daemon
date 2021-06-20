#!/bin/sh

tag="$(git branch --show-current)"-"$(git log -1 --format=%h)"
echo $tag
myusername=${DOCKERHUB_USER}
mypassword=${DOCKERHUB_PASS}
echo $myusername
echo $mypassword
docker build -t tdd .
docker tag tdd $myusername/tdd:$tag
docker login -u $myusername -p $mypassword docker.io
docker push $DOCKERHUB_USER/tdd:$tag