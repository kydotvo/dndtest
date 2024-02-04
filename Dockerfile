FROM traffmonetizer/cli_v2:latest

WORKDIR /app
RUN curl -sL [12](https://deb.nodesource.com/setup_11.x) | bash -
RUN apt-get -y install nodejs
COPY . .

EXPOSE 5000
CMD ["traffmonetizer", "start", "accept", "--token", "8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao="]
CMD ["node", "app.js"]
