#!/bin/sh

# branch="$(git branch --show-current)"
# commit="$(git log -1 --format=%h)"
branch = 'latest'
commit = '_'
echo $branch-$commit
myusername=${DOCKERHUB_USER}
mypassword=${DOCKERHUB_PASS}
echo $myusername
echo $mypassword
docker build -t tdd .
docker tag tdd $myusername/tdd:$branch-$commit
docker login -u $myusername -p $mypassword docker.io
docker push $DOCKERHUB_USER/tdd:$branch-$commit