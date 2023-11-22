FROM ubuntu:18.04

WORKDIR /webapp

RUN apt-get install apache2
COPY src/main.html ./

sudo systemctl status apache2

/var/www folder is the place to store the files

#CMD [some command running apache2]