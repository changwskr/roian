#docker run --name centos centos:latest /bin/echo 'hello docker'
#-----------------------------------------------------------------------
# docker image name : myroiandev
#-----------------------------------------------------------------------
# port 정보
# CentOS
# Nginx : 80
# volta
# PM2 by volta
# Node, NPM (express) : 7101
# python3, pip  (flask)  : 7201
# MySQL 8
# rsync, rcp setting: 22
# -----------------------------------------------------------------
docker container run -it --name "myroiandev" --hostname myroiandev -v /home/roian/workspace/sfd:/home/workspace -p 80:80 -p 7101:7101 -p 7201:7201 centos /bin/bash
