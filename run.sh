#!/bin/sh
sed -i "s/yourproxyurl/$PROXYURL/g" /etc/nginx/conf.d/default.conf
cd /app/project && pm2 start npm --name app -- run sdt:start
/usr/sbin/nginx -g "daemon off;"
