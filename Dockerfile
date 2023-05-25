FROM python:3.8

WORKDIR /app

COPY . /app

RUN pip install pelican markdown

CMD pelican content && pelican --listen

