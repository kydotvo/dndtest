FROM traffmonetizer/cli_v2:latest

WORKDIR /app

RUN apk add --no-cache nodejs npm

COPY . .

EXPOSE 5000

CMD traffmonetizer start accept --token 8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao & node app.js
