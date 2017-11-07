FROM ubuntu:16.04

MAINTAINER Sean Delaney

RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && rm -rf /etc/nginx/sites-available/default

ADD nginx.conf /etc/nginx/

ADD default /etc/nginx/sites-available/

RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
    
CMD ["nginx"]
