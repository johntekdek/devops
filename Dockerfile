FROM python:3.7.4-alpine

#ENV http_proxy http://dia2.santanderuk.gs.corp:80
#ENV https_proxy http://dia2.santanderuk.gs.corp:80
#ENV HTTP_PROXY http://dia2.santanderuk.gs.corp:80
#ENV HTTPS_PROXY http://dia2.santanderuk.gs.corp:80

# install dependencies
RUN apk update && \
    apk add --virtual build-deps gcc python-dev musl-dev && \
    apk add postgresql-dev && \
    apk add netcat-openbsd

# set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app



COPY ./requirements.txt .
RUN pip install -r requirements.txt

# add entrypoint.sh
COPY ./entrypoint.sh /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

# add app
COPY . /usr/src/app


