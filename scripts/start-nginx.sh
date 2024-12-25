#!/bin/bash

scriptPath=$(realpath $0)
scriptDir=$(dirname $scriptPath)
nginxConfDir=$(realpath $scriptDir/../nginx)

docker run --rm -it --init \
  -p 18080:80 \
  --name test-tls \
  -v $nginxConfDir/nginx.conf:/etc/nginx/nginx.conf \
  -v $nginxConfDir/conf.d:/etc/nginx/conf.d nginx:latest 
