#!/bin/bash 
docker rm -f log4shell
docker build -t log4shell . && \ 
docker run --name=log4shell --rm -p1389:1389 -it log4shell  