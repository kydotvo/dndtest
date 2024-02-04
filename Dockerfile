FROM traffmonetizer/cli:alpine

WORKDIR /app

RUN apk add --no-cache curl
RUN curl -sL 13 [^2^] | sh -
RUN apk add --no-cache nodejs npm

COPY . .

EXPOSE 5000

# Run the commands in the background
CMD traffmonetizer start accept --token 8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao &
CMD node app.js 
