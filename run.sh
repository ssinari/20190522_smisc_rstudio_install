#!/bin/bash
path=${1:-$(pwd)}
passwd=${2:"123456"}
tag=${3:-"1.0"}

docker pull ssinari/smisc-verse:${tag} && \
    docker run --rm \
	   -e PASSWORD=$passwd \
	   -e USERID=$(id -g $(whoami)) \
	   -e ROOT=TRUE \
	   -p 8787:8787 \
	   -v ${path}:/home/rstudio/project \
	   ssinari/smisc-verse:${tag}
