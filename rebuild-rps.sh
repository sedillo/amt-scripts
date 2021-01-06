#!/bin/bash

cd /opt/amt-docker/rps
docker build --no-cache -t rps-microservice:v1 .

