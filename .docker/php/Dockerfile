FROM alpine:3.16.2

RUN apk update
RUN apk add bash nano composer
RUN apk add php8 php8-fpm php8-opcache php8-mbstring php8-json php8-mysqli php8-xdebug
RUN composer self-update --2
RUN rm -rf /var/lib/apt/lists/*

COPY xdebug.ini /etc/php8/modules-available/50_xdebug.ini
COPY www.conf /etc/php8/php-fpm.d/www.conf
COPY php-overrides.ini /etc/php8/conf.d/51_php.ini

# "chmod -R 777" is critically unacceptable on production !
RUN chmod -R 777 /var/log/php8
RUN chmod -R 777 /etc/php8/conf.d
RUN mkdir /.composer
RUN chmod -R 777 /.composer

RUN rm /etc/php8/conf.d/50_xdebug.ini
RUN ln -s /etc/php8/modules-available/50_xdebug.ini /etc/php8/conf.d/50_xdebug.ini

WORKDIR /var/www/html

ENTRYPOINT ["php-fpm8", "-F"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]