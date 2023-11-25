FROM ubuntu:18.04

WORKDIR /webapp

COPY src ./

RUN apt-get -yq update
RUN apt-get -yq install apache2

RUN chmod 755 /var/www/html

COPY /webapp/src/main.html /var/www/html

#https://myrestraining.com/blog/docker/how-to-run-docker-compose-in-detached-mode/
#https://serverfault.com/questions/227190/how-do-i-ask-apt-get-to-skip-any-interactive-post-install-configuration-steps

