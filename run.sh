#!/bin/sh
cd /app/project && pm2 start npm --name app -- run sdt:start
/usr/sbin/nginx -g "daemon off;"
