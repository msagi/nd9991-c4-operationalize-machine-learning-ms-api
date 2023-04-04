## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	python3.7 -m venv ~/.devops
	source ~/.devops/bin/activate

install:
	# This should be run from inside a virtualenv
	pip install --no-cache-dir --upgrade pip==22.3.1 &&\
		pip install --no-cache-dir -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# linter for Dockerfiles
	hadolint Dockerfile
	# linter for Python source code linter: https://www.pylint.org/
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
