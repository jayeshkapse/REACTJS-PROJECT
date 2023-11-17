#!/bin/bash

if [ "$1" == "dev" ]; then
    docker login -u jkapse51 -p dckr_pat_0ZKc5p1mi4ej-R8xrg0B62bP8rg
    ./build.sh
    docker tag reactimg:v1 docker.io/jkapse51/dev/docker-repo:latest
    docker push docker.io/jkapse51/dev/docker-repo:latest
    echo "Image successfully pushed to the 'dev' repository."

elif [ "$1" == "prod" ]; then
    docker login -u jkapse51 -p dckr_pat_0ZKc5p1mi4ej-R8xrg0B62bP8rg
    ./build.sh
    docker tag reactimg:v1 docker.io/jkapse51/prod/dockerhub:latest
    docker push docker.io/jkapse51/prod/dockerhub:latest
    echo "Image successfully pushed to the 'prod' repository."

else
    echo "Invalid argument. Use 'dev' or 'prod'."
fi
