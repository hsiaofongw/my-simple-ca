#!/bin/bash

# Document:
# https://man7.org/linux/man-pages/man1/certtool.1.html

alias certtool="docker run --init -w /root/certtool --rm -it -v $PWD:/root/certtool certtool:latest certtool"
shopt -s expand_aliases

certtool --generate-privkey --outfile key.pem
certtool --template=cert.template --generate-certificate --load-privkey key.pem --outfile cert.pem --load-ca-certificate ca-cert.pem --load-ca-privkey ca-key.pem
