const fs = require('fs');
const http = require('http');

const hostname = '0.0.0.0';
const port = 8080;

const server = http.createServer((req, res) => {
  fs.appendFile('/log/log.txt', JSON.stringify(req.headers) + "\n\n", (error, data) => {
    if (error) {
      return console.log(error);
    }
  });
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Logged request to /log/log.txt!');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
