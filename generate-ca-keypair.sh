#!/bin/bash

# Document:
# https://man7.org/linux/man-pages/man1/certtool.1.html

alias certtool="docker run --init -w /root/certtool --rm -it -v $PWD:/root/certtool certtool:latest certtool"
shopt -s expand_aliases

certtool --generate-privkey --outfile ca-key.pem
certtool --template=ca.template --generate-self-signed --load-privkey ca-key.pem  --outfile ca-cert.pem
