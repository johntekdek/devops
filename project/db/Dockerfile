# pull official base image
FROM postgres:11.4-alpine

ENV http_proxy http://dia2.santanderuk.gs.corp:80
ENV https_proxy http://dia2.santanderuk.gs.corp:80
ENV HTTP_PROXY http://dia2.santanderuk.gs.corp:80
ENV HTTPS_PROXY http://dia2.santanderuk.gs.corp:80

# run create.sql on init
ADD create.sql /docker-entrypoint-initdb.d