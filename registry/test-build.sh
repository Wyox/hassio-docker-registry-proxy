#!/bin/bash

docker build -t hassio-registry --no-cache --build-arg BUILD_FROM=registry:2 -f Dockerfile .

docker run -v "$(pwd)/data:/data" -p 3000:5000 hassio-registry