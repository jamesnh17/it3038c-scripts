const http = require("http");
const fs = require("fs");
const os = require("os");
const ip = require('ip');

http.createServer((req, res) => {
    if (req.url === "/") {
        fs.readFile("./Public/index.html", "UTF-8", (err, body) => {
            res.writeHead(200, {"Content-Type": "text/html"});
            res.end(body);
        });
    } else if(req.url.match("/sysinfo")) {
        myHostName=os.hostname();
        totalMemory=os.totalmem();
        memoryMB=(totalMemory / (1024 * 1024));
        freeMemory=os.freemem();
        freeMB=(freeMemory / (1024 * 1024));

        // Uptime Variables
        totalSeconds=os.uptime();
        upDays=Math.floor(totalSeconds / 86400);
        upHours=Math.floor((totalSeconds / 3600) - (upDays * 24));
        upMinutes=Math.floor(totalSeconds % 3600 / 60);
        upSeconds=Math.floor(totalSeconds % 60);

        html=`
        <!DOCTYPE html>
        <html>
          <head>
            <title>Node JS Response</title>
          </head>
          <body>
            <p>Hostname: ${myHostName}</p>
            <p>IP: ${ip.address()}</p>
            <p>Server Uptime: ${upDays} Days ${upHours} hours ${upMinutes} minutes ${upSeconds} seconds </p>
            <p>Total Memory: ${memoryMB} MB</p>
            <p>Free Memory: ${freeMB} MB</p>
            <p>Number of CPUs: ${os.cpus().length} CPU's</p>
          </body>
        </html>`
        res.writeHead(200, {"Content-Type": "text/html"});
        res.end(html);
    } else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end(`404 File Not Found at ${req.url}`);
    }
}).listen(3000);

console.log("Server listening on port 3000");
