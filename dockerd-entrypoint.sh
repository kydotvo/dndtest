#!/bin/bash

./Cli start accept --token 8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao= &

pm2 start app.js --name myapp --watch &

wait

