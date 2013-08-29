#!/bin/bash

sudo docker build github.com/troygoode/docker-elasticsearch
sudo docker run -d -i -p 49000:9200 troygoode/docker-elasticsearch
