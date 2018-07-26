#!/bin/sh
cd /app && pm2 start npm --name app -- run sdt:start
/usr/sbin/nginx -g "daemon off;"
EOF
