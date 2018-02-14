FROM python:3.6-alpine
MAINTAINER Borodin Gregory <grihabor@gmail.com>

RUN apk update \
 && apk add git

ENV CATCHBOT_CERT /certs/cert.pem
ENV CATCHBOT_KEY /certs/key.pem

WORKDIR /certs

ADD secrets/cert.pem .
ADD secrets/key.pem .

WORKDIR /project

RUN pip3 install --upgrade pip wheel setuptools

ADD catchbot .
RUN python3 setup.py install

CMD catchbot start && while sleep 3600; do :; done
