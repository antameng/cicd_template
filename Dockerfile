FROM nginx:latest

COPY  /app/dist /usr/share/nginx/html

COPY  /app/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]