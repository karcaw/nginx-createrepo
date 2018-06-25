FROM nginx:latest

MAINTAINER karcaw@gmail.com

RUN apt-get update && \
    apt-get install -y createrepo && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
