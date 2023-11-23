FROM ubuntu:18.04

WORKDIR /webapp

COPY src/main.html ./

#sudo systemctl status apache2

#/var/www folder is the place to store the files
