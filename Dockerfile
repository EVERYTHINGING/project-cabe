FROM ubuntu:latest

COPY docker-compose.yml .

RUN apt-get update
RUN apt-get install docker-compose-plugin

RUN docker-compose up -d