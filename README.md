# Operationalize a Machine Learning Microservice API

This project contains a Machine Learning Microservice Flask sample application code and model data, as well as a Makefile, Dockerfile and shell scripts to dockerize and run the Docker image on a Kubernetes cluster.

Requirements:
* Python 3.7
* Docker Desktop 4.17.0 (99724)
* Minikube v1.30.0
* hadolint 2.12.0

## Key commands and scripts
```bash
# Create Python virtual environment (in ~/.devops folder)
make setup

# Install Python dependencies (run on Python virtual environment)
. ~/.devops/bin/activate
make install

# Run static code analysis (run on Python virtual environment)
. ~/.devops/bin/activate
make lint

# Run the Python app on local Python virtual environment
. ~/.devops/bin/activate
python app.py

# Build Docker image and run local container
./run_docker.sh

# Upload Docker image to DockerHub
./upload_docker.sh

# Run Docker image on Kubernetes cluster
./run_kubernetes.sh

```

## Key files list
| File  | Description |
| ------------- | ------------- |
| `.circleci`  | CircleCI configuration folder  |
| `Dockerfile`  | Docker build file  |
| `Makefile`  | make utility file |
| `app.py`  | Machine Learning Microservice API Python application |
| `make_prediction.sh`  | Linux bash script to trigger a prediction via the application API |
| `model_data`  | Machine learning application model data folder |
| `requirements.txt`  | Python dependencies file |
| `run_docker.sh`  | Linux bash script to build Docker image and run local container |
| `run_kubernetes.sh`  | Linux bash script to run Docker image on Kubernetes cluster |
| `upload_docker.sh`  | Linux bash script to upload Docker image to DockerHub |



