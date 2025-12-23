FROM nginx:alpine

COPY Devops/index.html /usr/share/nginx/html/index.html

EXPOSE 80
