# DOCKER-VERSION 0.6.4

FROM ubuntu:12.04

RUN echo deb http://archive.ubuntu.com/ubuntu precise main universe multiverse > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y nginx
RUN rm /etc/nginx/sites-enabled/default
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/sites-enabled"]

EXPOSE 80
CMD ["nginx"]
