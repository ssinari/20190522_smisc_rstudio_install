#!/bin/bash
tag=${1:-"1.0"}
docker pull ssinari/smisc-verse:${tag} && \
    docker run --rm \
	   -e PASSWORD=rstudio \
	   -e USERID=$(id -g $(whoami)) \
	   -e ROOT=TRUE \
	   -p 8787:8787 \
	   -v ${path}:/home/rstudio/project \
	   ssinari/smisc-verse:${tag}
