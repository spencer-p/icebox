FROM arm32v6/nginx:stable-alpine
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./www/ /usr/share/nginx/html
#COPY ./www/index.html /usr/share/nginx/html/index.html
#COPY ./www/404.html /usr/share/nginx/html/404.html
