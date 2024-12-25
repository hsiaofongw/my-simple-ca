#!/bin/bash

scriptPath=$(realpath $0)
scriptDir=$(dirname $scriptPath)
nginxConfDir=$(realpath $scriptDir/../nginx)

alias nginx="docker run --rm -it --init \
-v $nginxConfDir/nginx.conf:/etc/nginx/nginx.conf \
-v $nginxConfDir/conf.d:/etc/nginx/conf.d nginx:latest nginx"

shopt -s expand_aliases

nginx -t
