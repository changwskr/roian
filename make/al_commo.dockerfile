FROM node:12 
FROM ubuntu:18.04
LABEL maintainer="roian <roian@gmail.com>"

# 환경설정 무시
ENV DEBIAN_FRONTEND=noninteractive

# install webserver apache
RUN apt-get update && apt-get install -y apache2
RUN apt-get install -y software-properties-common
#RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y php5.6
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN cat /etc/apache2/apache2.conf

EXPOSE 8181
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUD"]

RUN mkdir /home/commo
COPY sp_commo.js / 
COPY sp_comrc.js / 
CMD ["node", "/sp_commo.js"] 


