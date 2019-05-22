# Purpose

This repo contains:

  - Dockerfile: a docker image that creates an R instance of version 3.6.0 in
  RStudio version 1.2.1335 with packages "devtools" and "ssinari/smisc"
  preinstalled. It was created to test the installation of "smisc" using
  devtools::install_github in RStudio. Works as of 2019-05-22.
  - build.sh: bash script for building the docker image and running the container.  

# Access

Access using localhost:8787.
