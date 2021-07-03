#------------------------------------------------------------------
# docker image name : myroiandev
#-------------------------------------------------------------------
# port 정보
# CentOS
# Nginx : 80
# volta
# PM2 by volta
# Node, NPM (express) : 7101
# python3, pip  (flask)  : 7201
# MySQL 8
# rsync, rcp setting: 22
# 공유볼륨 : home/roian/workspace/sfd -> /home/workspace
# -----------------------------------------------------------------
docker container run -it --name "myroiandev" --hostname myroiandev -v /home/roian/workspace/sfd:/home/workspace -p 80:80 -p 7101:7101 -p 7201:7201 centos /bin/bash
#  $myroiandev> yum install epel-release -y
#  $myroiandev> yum install which -y
#  $myroiandev> yum install telnet -y
#  $myroiandev> yum install rsync -y
#  $myroiandev> yum install openssh-clients -y
# -----------------------------------------------------------------
#  Install NginX
# -----------------------------------------------------------------
# vi /etc/yum.repos.d/nginx.repo
# [nginx]
# name=nginx repo
# baseurl=http://nginx.org/packages/centos/7/$basearch/
# gpgcheck=0
# enabled=1
# wq!
#
# $myroiandev> yum install nginx -y
# $myroiandev> nginx
# $myroiandev> nginx -s stop
#
#
