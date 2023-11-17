#!/bin/bash

if [ "$1" == "dev" ]; then
    docker login -u jkapse51 -p dckr_pat_Ym_APp6k6h_EuQPVt_x7bsgIcoE
    ./build.sh
    docker tag reactimg:v1 jkapse51/dev:docker-repo
    docker push jkapse51/dev:docker-repo
    echo "Image successfully pushed to the 'dev' repository."

elif [ "$1" == "prod" ]; then
    docker login -u jkapse51 -p dckr_pat_Ym_APp6k6h_EuQPVt_x7bsgIcoE
    ./build.sh
    docker tag reactimg:v1 jkapse51/dev:docker-repo
    docker push jkapse51/dev:docker-repo
    echo "Image successfully pushed to the 'prod' repository."

else
    echo "Invalid argument. Use 'dev' or 'prod'."
fi
