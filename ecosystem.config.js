module.exports = {
  apps : [{
    name: 'CLI',
    script: '/app/Cli',
    args: 'start accept --token 8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao=',
    watch: '.'
  }, {
    name: 'myapp',
    script: '/app/app.js',
    watch: '.'
  }]
};