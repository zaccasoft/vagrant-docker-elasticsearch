#!/bin/bash

cd /vagrant/lib
docker build -t troygoode/elastic-search .
docker run -d -i -p 49000:9200 troygoode/elastic-search
