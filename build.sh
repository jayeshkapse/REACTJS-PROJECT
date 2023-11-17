#!/bin/bash
docker login -u jkapse51 -p dckr_pat_Ym_APp6k6h_EuQPVt_x7bsgIcoE
docker build -t reactimg:v1 .
docker-compose down || true
docker-compose up -d

