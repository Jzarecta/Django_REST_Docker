# We take a Python docker base
FROM python:3.6

# We give this buffered atribute to make it easier to debug
# ENV is a global variable to define our docker enviroment
# More info: https://docs.docker.com/engine/reference/builder/#env

ENV PYTHONUNBUFFERED 1

# RUN allow us to execute actions in the docker build process
# and commit the results
# https://docs.docker.com/engine/reference/builder/#run

RUN mkdir /django_rest

# Set the working directory for any RUN or CMD command
# https://docs.docker.com/engine/reference/builder/#workdir

WORKDIR /django_rest

# COPY is used to copy files inside the Dockerfile
# https://docs.docker.com/engine/reference/builder/#copy

COPY . /django_rest/

# We execute another RUN for Pip to install the requirements.txt

RUN pip install -r requirements.txt


