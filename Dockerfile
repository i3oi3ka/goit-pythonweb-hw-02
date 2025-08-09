FROM python:3.10-slim

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY . $APP_HOME

RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc \
    && apt-get clean

RUN pip install --no-cache-dir -r requirements.txt 

ENTRYPOINT [ "python", "main.py" ]