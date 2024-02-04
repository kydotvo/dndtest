FROM traffmonetizer/cli_v2:latest

WORKDIR /app

RUN apk add --no-cache nodejs npm

RUN npm install pm2 --global

COPY . .

EXPOSE 5000

CMD ["pm2", "start", "app.js"]

CMD ["traffmonetizer", "start", "accept", "--token", "8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao="]
