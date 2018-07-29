FROM keymetrics/pm2:latest-alpine
MAINTAINER 704504886@qq.com
COPY run.sh /tmp/
RUN apk add --no-cache nginx && \
    mkdir -p /app/project && \
    mkdir -p /app/log/pm2 && \
    mkdir -p /app/log/nginx && \
    mkdir -p /etc/nginx/nginx.d/ && \
    mkdir -p /run/nginx/ && \
    cd /tmp/ && \
    mv run.sh /app && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*
CMD /bin/sh /app/run.sh
EXPOSE 80
