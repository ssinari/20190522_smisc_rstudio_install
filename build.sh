#!/bin/bash
docker build --build-arg WHEN=2019-05-22 . -t ss_rstudio && \
    docker run -e  PASSWORD=123456 -p 8787:8787 ss_rstudio
