FROM python:3.10-slim-bullseye

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . .
RUN pip install -r requirements.txt

RUN apt-get update && apt-get upgrade -y && python main.py