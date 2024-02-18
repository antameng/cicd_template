FROM node:lts
# 维修者
MAINTAINER Razil "671608311@qq.com"
WORKDIR /app
COPY . ./
# 暴露端口
EXPOSE 9000
RUN echo "🎉 架 🎉 设 🎉 成 🎉 功 🎉"