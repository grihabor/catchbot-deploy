FROM python:3.6-alpine
MAINTAINER Borodin Gregory <grihabor@gmail.com>

RUN pip3 install https://github.com/grihabor/catch-hook-telegram-bot

ENV CATCHBOT_CERT /certs/cert.pem
ENV CATCHBOT_KEY /certs/key.pem

WORKDIR /certs

ADD secrets/cert.pem .
ADD secrets/key.pem .

WORKDIR /project

CMD ["catchbot", "start"]
