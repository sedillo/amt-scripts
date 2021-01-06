#!/bin/bash

cd /opt/amt-docker/mps/scripts/docker-compose
docker-compose -f docker-compose_onlyServices.yml down

docker stop docker-compose_rps_1
docker stop docker-compose_mps_1
docker rm docker-compose_rps_1
docker rm docker-compose_mps_1
docker volume rm docker-compose_app-volume
docker volume rm docker-compose_private-volume

