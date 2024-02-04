FROM traffmonetizer/cli_v2:latest

WORKDIR /app

RUN apk add --no-cache python3 py3-pip

COPY . .

EXPOSE 5000

CMD traffmonetizer start accept --token 8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao &
CMD python -m SimpleHTTPServer 5000
