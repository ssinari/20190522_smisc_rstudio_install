FROM rocker/verse:3.6.0
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    sudo \
    less \
    libssl-dev \
    git \
    libssl-dev \
    libssh2-1-dev \
    libxml2-dev \
    zlib1g-dev \
    libcurl4-gnutls-dev
    
ARG WHEN
RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}')); \
  install.packages('devtools'); \
  library('devtools'); \
  install_github(\"ssinari/smisc\")"  

WORKDIR /home/rstudio
RUN mkdir project; chown -R rstudio:rstudio project
VOLUME ["/home/rstudio/project"]
USER rstudio
