#!/bin/bash

docker build -t drink-actions:3.0 --no-cache .
docker tag drink-actions:3.0 docker.io/camattin/drink-actions:3.0
docker push docker.io/camattin/drink-actions:3.0
