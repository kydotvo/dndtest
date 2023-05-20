FROM ubuntu:22.04 as base
USER root
RUN  apt-get update \
  && apt-get install -y wget libxcb-glx0 libx11-xcb1 libxcb-icccm4 libxcb-image0 libxcb-shm0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-sync1 libxcb-xfixes0 libxcb-render0 libxcb-shape0 libxcb-xinerama0 libxcb-xkb1 libxcb1 libx11-6 libxkbcommon-x11-0 libxkbcommon0 libgl1 libxcb-util1 libxau6 libxdmcp6 libbsd0
WORKDIR /home/app
COPY . .
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_18.x  | bash -
RUN apt-get -y install nodejs
RUN wget -P /home/app -r https://updates.peer2profit.app/peer2profit_0.48_amd64.deb
RUN apt-get install -y ./updates.peer2profit.app/peer2profit_0.48_amd64.deb

EXPOSE 5000
CMD p2pclient --login taymstutaymstu@gmail.com & node app.js
