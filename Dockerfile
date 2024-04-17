FROM ubuntu:latest

COPY docker-compose.yml .

RUN apt-get update
RUN apt-get install -y python3-pip

RUN pip install docker-compose

RUN docker-compose up -d