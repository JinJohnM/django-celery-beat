FROM python:3.8

ENV APPLICATION_ROOT /app
RUN mkdir $APPLICATION_ROOT
WORKDIR $APPLICATION_ROOT

COPY . /app/

RUN pip install -r requirements.txt