FROM ubuntu:16.04

MAINTAINER Sean Delaney

RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && rm -rf /etc/nginx/sites-available/default

ADD nginx.conf /etc/nginx/

ADD default /etc/nginx/sites-available/

CMD ["nginx"]
