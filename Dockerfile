FROM nginx:latest

MAINTAINER karcaw@gmail.com

RUN apt-get update && \
    apt-get install -y createrepo-c curl unzip dnf && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/bin/createrepo_c /usr/bin/createrepo
COPY default.conf /etc/nginx/conf.d/
COPY css /css
RUN mkdir /repo

