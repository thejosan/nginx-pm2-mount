#!/bin/sh
cd /app/project && pm2 start npm --name app -- run sdt:start
mount /root/.pm2/logs /app/log/pm2
mount /var/log/nginx/ /app/log/nginx
/usr/sbin/nginx -g "daemon off;"
