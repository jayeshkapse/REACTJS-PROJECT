#!/bin/bash

if [ "$GIT_BRANCH" == "origin/dev" ]; then
  docker login -u jkapse51 -p dckr_pat_0ZKc5p1mi4ej-R8xrg0B62bP8rg

  ./build.sh

  docker tag your-image dev/docker-repo:latest

  docker push dev/docker-repo:latest

  echo "Image successfully pushed to the 'dev' repository."
  
elif [ "$GIT_BRANCH" == "origin/main" ]; then
  docker login -u jkapse51 -p  dckr_pat_0ZKc5p1mi4ej-R8xrg0B62bP8rg

  
  ./build.sh

  
  docker tag your-image prod/dockerhub:latest

  docker push prod/dockerhub:latest

  echo "Image successfully pushed to the 'prod' repository."

else
  echo "Deployment error/fail: Invalid branch."
  exit 1
fi

