FROM nginx:alpine
EXPOSE 4204

RUN rm -rf /usr/share/nginx/html/*

COPY nginx.conf /etc/nginx/nginx.conf

COPY . /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
