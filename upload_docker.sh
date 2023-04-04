#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
APP_NAME=ml-microservice
VERSION_TAG=v1.0.5

# Step 1:
# Create dockerpath
DOCKER_PATH=msaginwm/$APP_NAME

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $DOCKER_PATH"
docker login
docker tag $DOCKER_PATH $DOCKER_PATH:$VERSION_TAG

# Step 3:
# Push image to a docker repository
docker push $DOCKER_PATH:$VERSION_TAG
