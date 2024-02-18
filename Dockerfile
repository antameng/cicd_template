# 镜像文件
FROM node:latest
# 维修者
MAINTAINER Razil "671608311@qq.com"
# 镜像中项目路径
WORKDIR $GOPATH/src/kun.com/cicd-demo
# 拷贝当前目录代码到镜像
COPY . $GOPATH/src/kun.com/cicd-demo
# 暴露端口
EXPOSE 8001
# 程序入口
ENTRYPOINT ["./cicd-demo"]
