#!/bin/bash

if [ "$1" == "dev" ]; then
    docker login -u jkapse51 -p dckr_pat_0ZKc5p1mi4ej-R8xrg0B62bP8rg
    ./build.sh
    docker tag reactimg:v1 jkapse51/dev:docker-repo
    docker push jkapse51/dev:docker-repo
    echo "Image successfully pushed to the 'dev' repository."

elif [ "$1" == "prod" ]; then
    docker login -u jkapse51 -p dckr_pat_0ZKc5p1mi4ej-R8xrg0B62bP8rg
    ./build.sh
    docker tag reactimg:v1 jkapse51/dev:docker-repo
    docker push jkapse51/dev:docker-repo
    echo "Image successfully pushed to the 'prod' repository."

else
    echo "Invalid argument. Use 'dev' or 'prod'."
fi
