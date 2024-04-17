FROM --platform=linux/amd64 node:18-alpine as builder

COPY docker-compose.yml .

RUN apt install python3-pip -y

RUN pip install docker-compose

RUN docker-compose up -d