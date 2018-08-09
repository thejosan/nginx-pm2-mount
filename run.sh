#!/bin/sh
sed -i "s/yourproxyurl/$PROXYURL/g" /etc/nginx/conf.d/default.conf
cd $APPDIR 
pm2 start npm --name app -- sdt:start
/usr/sbin/nginx -g "daemon off;"
