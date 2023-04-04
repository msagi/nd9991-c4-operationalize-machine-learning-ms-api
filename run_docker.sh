#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

APP_NAME=ml-microservice
DOCKER_PATH=msaginwm/$APP_NAME
LOCAL_PORT=8000

# Step 1:
# Build image and add a descriptive tag
docker build -t $DOCKER_PATH .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run --name $APP_NAME -p $LOCAL_PORT:80 $DOCKER_PATH