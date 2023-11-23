FROM ubuntu:18.04

USER root
WORKDIR /webapp

RUN sudo apt-get install apache2
COPY src/main.html ./

#sudo systemctl status apache2

#/var/www folder is the place to store the files
