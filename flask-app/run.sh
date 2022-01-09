#!/bin/sh

docker build -t justde .
docker run -p 3008:3008 -d justde 
xdg-open http://localhost:3008/