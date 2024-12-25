#!/bin/bash

alias nginx="docker run --rm -it --init \
-v $PWD/nginx/nginx.conf:/etc/nginx/nginx.conf \
-v $PWD/nginx/conf.d:/etc/nginx/conf.d nginx:latest nginx"

shopt -s expand_aliases

nginx -t
