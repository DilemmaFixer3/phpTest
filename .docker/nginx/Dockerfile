FROM nginx:1.24.0-alpine3.17
RUN apk add nano
COPY ./.docker/nginx/cert/ssl.dev.crt /opt/mrstst/cert/ssl.dev.crt
COPY ./.docker/nginx/cert/ssl.dev.key /opt/mrstst/cert/ssl.dev.key
COPY ./.docker/nginx/default.conf /etc/nginx/conf.d/default.conf