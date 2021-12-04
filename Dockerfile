FROM python:3.8.12-alpine

WORKDIR /

COPY discord discord
COPY utils utils

WORKDIR /discord

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "discord_bot.py" ]