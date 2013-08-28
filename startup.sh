#!/bin/bash

docker build github.com/troygoode/docker-elasticsearch
docker run -d -i -p 49000:9200 troygoode/docker-elasticsearch
