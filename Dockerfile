FROM traffmonetizer/cli:alpine

WORKDIR /app

RUN apk add --no-cache python

COPY . .

EXPOSE 5000

CMD traffmonetizer start accept --token 8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao &
CMD python -m SimpleHTTPServer 5000
