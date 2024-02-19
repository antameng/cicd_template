FROM nginx:latest

WORKDIR /usr/share/nginx/html/

ADD ./nginx.conf /etc/nginx/conf.d/default.conf

ADD ./dist  /usr/share/nginx/html/

#COPY ..

#COPY  /app/dist /usr/share/nginx/html/dist

#COPY  /app/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]