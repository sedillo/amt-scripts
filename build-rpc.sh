#!/bin/bash

sudo apt-get -y update 
sudo apt install -y git cmake build-essential libboost-system-dev libboost-thread-dev libboost-random-dev libboost-regex-dev  libboost-filesystem-dev libssl-dev zlib1g-dev

git clone https://github.com/open-amt-cloud-toolkit/rpc.git && cd rpc

mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
cmake --build .

