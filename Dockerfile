# node 构建
FROM node:lts
# 署名
MAINTAINER Adoin '671608311@qq.com'
WORKDIR /app
COPY . ./

# 设置阿里镜像、pnpm、依赖、编译
RUN npm install pnpm -g && \
    pnpm install
    pnpm run build
# node部分结束
RUN echo "🎉 编 🎉 译 🎉 成 🎉 功 🎉"

FROM nginx:latest

WORKDIR /usr/share/nginx/html/

ADD ./nginx.conf /etc/nginx/conf.d/default.conf

ADD ./dist  /usr/share/nginx/html/

#COPY ..

#COPY  /app/dist /usr/share/nginx/html/dist

#COPY  /app/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]