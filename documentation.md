# Flask API Application

## Objective
This project aims to develop, containerize, deploy, secure, and set up a CI/CD pipeline for a Flask API application using Docker, Kubernetes, and GitHub Actions.

## Steps

## Requirements
- Python 3.9 or higher
- Flask
- Docker
- Kubernetes (Docker Desktop with Kubernetes enabled)
- Git
- Access to Docker Hub
- A GitHub account

## Setup

1. **Clone the Repository**:
   git clone https://github.com/mmumshad/simple-webapp-flask.git
   cd simple-webapp-flask
# create virtual environment
    python -m venv venv
    .\venv\Scripts\activate 
# install requirements
    pip install -r requirements.txt

# Containerization
Create Dockerfile in the root directory with configuarations 

# built docker image
docker build -t flask-api-app .

# Run container
docker run -p 5000:5000 flask-api-app

# Push image to Docker hub
docker login

docker tag flask-api-app your-dockerhub-username/flask-api-app:latest

docker push your-dockerhub-username/flask-api-app:latest

# Deployment
Create a deployment.yaml with necessary  configurations

Create service.YAML

# CI/CD Pipeline
Create a github workflow file
set up secret keys on github; DOCKER_HUB_USERNAME and DOCKER_HUB_TOKEN

# Source control
Create a new repository
Initialized the project
Pushed the updated code







