#!/bin/bash

# Document:
# https://man7.org/linux/man-pages/man1/certtool.1.html

alias certtool="docker run --init -w /root/certtool --rm -it -v $PWD/certs:/root/certtool/certs -v $PWD/templates:/root/certtool/templates certtool:latest certtool"
shopt -s expand_aliases

certtool --generate-privkey --outfile certs/ca-key.pem
certtool --template=templates/ca.ini --generate-self-signed --load-privkey certs/ca-key.pem  --outfile certs/ca-cert.pem
