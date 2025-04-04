FROM nginx:alpine
LABEL maintainer="binge8 <cxwa28@163.com>"

#加入httpsok
COPY httpsok/httpsok.sh docker-entrypoint.d

# 更新包，安装bash,定时任务开机运行
RUN apk update && apk upgrade \
    && apk add --no-cache bash shadow \
    && usermod -s /bin/bash root \
    && apk del shadow && apk cache clean

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
