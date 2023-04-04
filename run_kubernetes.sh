#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
APP_NAME=ml-microservice
VERSION_TAG=v1.0.5

# Step 1:
# This is your Docker ID/path
DOCKER_PATH=msaginwm/$APP_NAME

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $APP_NAME --image=$DOCKER_PATH:$VERSION_TAG

# Step 3:
# List kubernetes pods
kubectl get pods -o wide

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/$APP_NAME 8000:80

