FROM python:3.6
MAINTAINER CHENG-HUNG,WANG

ENV PYTHONUNBUFFERED 1
RUN mkdir /usr/src/web
WORKDIR /usr/src/web

#ADD requirements.txt /usr/src/web
COPY . /usr/src/web
RUN pip install -r requirements.txt
