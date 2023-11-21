FROM ubuntu:18.04

WORKDIR /webapp

RUN apt-get install apache2
COPY src/main.html ./




#CMD [some command running apache2]