#!/bin/bash

cd /opt/amt-docker/mps
docker build --no-cache -t mps-microservice:v1 .

