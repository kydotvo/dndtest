FROM traffmonetizer/cli_v2:latest

ENTRYPOINT []

WORKDIR /app

RUN apk add --no-cache --upgrade bash

RUN apk add --no-cache nodejs npm

RUN npm install pm2 --global

COPY . .

COPY supervisord.conf /etc/supervisord.conf

RUN apk add --no-cache supervisor

EXPOSE 5000

RUN chmod +x /app/dockerd-entrypoint.sh
RUN chmod +x /etc/supervisord.conf

USER root

CMD ["sh", "/app/dockerd-entrypoint.sh"]
