#!/bin/bash

set -e

echo Build FastAPI Docker image...

cd ~/enterprise-edge-kubernetes-lab/fastapi-app

docker build -t fastapi-fixed:1.0 .

docker save fastapi-fixed:1.0 -o fastapi-fixed.tar

sudo k3s ctr images import fastapi-fixed.tar

echo FastAPI image and imported into k3s.


