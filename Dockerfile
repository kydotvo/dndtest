FROM traffmonetizer/cli_v2:latest

WORKDIR /app

RUN apk add --no-cache nodejs npm

RUN npm install pm2 --global

COPY . .

EXPOSE 5000

CMD ["sh", "/app/dockerd-entrypoint.sh"]
