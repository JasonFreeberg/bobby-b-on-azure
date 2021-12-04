FROM python:3.8.12-alpine

WORKDIR /

COPY discord discord
COPY utils utils
COPY logging_config.ini utils/logging_config.ini

WORKDIR /discord

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "discord_bot.py" ]