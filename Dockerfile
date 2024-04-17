FROM ubuntu:latest

COPY docker-compose.yml .

RUN apt-get install python3-pip -y

RUN pip install docker-compose

RUN docker-compose up -d