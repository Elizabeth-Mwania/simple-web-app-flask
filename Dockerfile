FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3 python3-pip

COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
# Use an official Python runtime as a parent image
# FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .



# Define environment variable
ENV FLASK_APP=app.py



