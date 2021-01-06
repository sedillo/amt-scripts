#!/bin/bash

#Install docker
cd /opt
mkdir -p /opt/amt-docker
cd /opt/amt-docker
git clone https://github.com/open-amt-cloud-toolkit/mps.git
git clone https://github.com/open-amt-cloud-toolkit/rps.git

#Build mps/rps
cd /opt/amt-docker/rps
docker build -t rps-microservice:v1 .
cd /opt/amt-docker/mps
docker build -t mps-microservice:v1 .

#compose
cd /opt/amt-docker/mps/scripts/docker-compose
cp .env.template .env
sed -i 's/G@ppm0ym/P@ssw0rd/g' .env
sed -i 's/localhost/192.168.17.42/g' .env
