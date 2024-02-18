FROM nginx:latest

WORKDIR /usr/share/nginx/html/

RUN npm install pnpm -g
RUN pnpm run build

ADD ./docker/nginx.conf /etc/nginx/conf.d/default.conf

ADD ./dist  /usr/share/nginx/html/

EXPOSE 81

CMD ["nginx", "-g", "daemon off;"]