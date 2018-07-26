FROM keymetrics/pm2:latest-alpine
MAINTAINER 704504886@qq.com
RUN apk add --no-cache nginx && \
mkdir -p /app/project && \
mkdir -p /app/log && \
mkdir -p /etc/nginx/nginx.d/ && \
mkdir -p /run/nginx/ && \
rm -rf /var/cache/apk/*
CMD /bin/sh /app/run.sh
EXPOSE 80
