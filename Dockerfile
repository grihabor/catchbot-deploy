FROM python:3.6-alpine
MAINTAINER Borodin Gregory <grihabor@gmail.com>

WORKDIR /project

RUN pip3 install https://github.com/grihabor/catch-hook-telegram-bot

CMD ["catchbot", "start"]
