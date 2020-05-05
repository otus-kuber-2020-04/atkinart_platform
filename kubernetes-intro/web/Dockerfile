FROM nginx

MAINTAINER Artem Atkin "atkinart@gmail.com"

RUN usermod -u 1001 -o nginx \
&& groupmod -g 1001 -o nginx

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY app/* /app/
