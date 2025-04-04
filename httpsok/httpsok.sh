#!/bin/bash

#启动后等待10秒执行
sleep 10

#配置httpsok
if [ -n "$HTTPSOK" ]; then
  curl -s https://get.httpsok.com/ | bash -s $HTTPSOK
fi

#运行定时服务
crond