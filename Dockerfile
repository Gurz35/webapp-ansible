FROM ubuntu:latest

RUN apt-get update --yes
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_14.x
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

COPY ./helloworld.js /var/www/
CMD [ "node", "/var/www/helloworld.js"]