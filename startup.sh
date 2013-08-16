#!/bin/bash

if [ -f /vagrant/Dockerfile ]; then

  if [[ $(sudo docker images) != *troygoode\/elastic-search* ]]; then
    # only run if `docker images` says this image hasn't been created yet
    cd /vagrant
    sudo docker build -t troygoode/elastic-search .
  fi

  if [[ $(sudo docker ps) != *troygoode\/elastic-search* ]]; then
    # only run if not already running
    sudo docker run -d -i -p 49000:9200 troygoode/elastic-search
  fi
fi
