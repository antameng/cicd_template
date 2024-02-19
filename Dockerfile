FROM nginx:latest

COPY  /app/dist /usr/share/nginx/html/dist

COPY  /app/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]