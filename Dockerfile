FROM nginx:latest

MAINTAINER karcaw@gmail.com

RUN apt-get update && \
    apt-get install -y createrepo && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
COPY default.conf /etc/nginx/conf.d/
RUN mkdir /repo

