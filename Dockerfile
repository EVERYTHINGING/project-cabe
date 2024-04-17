FROM ubuntu:latest

COPY docker-compose.yml .

RUN apt-get update
RUN apt-get --assume-yes install curl
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

RUN docker-compose up -d