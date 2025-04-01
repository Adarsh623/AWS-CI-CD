#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull adarsh623/simple-python-flask-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 adarsh623/simple-python-flask-app:latest
