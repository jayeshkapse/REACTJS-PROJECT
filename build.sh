#!/bin/bash
docker build -t reactimg:v1 .
docker-compose down || true
docker-compose up -d

