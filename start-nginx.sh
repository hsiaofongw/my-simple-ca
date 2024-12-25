#!/bin/bash

docker run --rm -it --init \
  -p 18080:80 \
  --name test-tls \
  -v $PWD/nginx/nginx.conf:/etc/nginx/nginx.conf \
  -v $PWD/nginx/conf.d:/etc/nginx/conf.d nginx:latest 
