FROM alpine:latest

MAINTAINER andrewskaggs <andrew@andrewskaggs.com>

RUN apk add --update nginx

ADD index.html /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
