
#docker build -t 8.0-alpine-v3.16-base .

FROM 8.0-alpine-v3.16-base

#指定docker安装源
#apk add php8-pecl-xlswriter --repository http://nl.alpinelinux.org/alpine/edge/testing
#apk add php8-pecl-grpc --repository http://nl.alpinelinux.org/alpine/edge/testing
#apk add php8-mongodb --repository https://php.hernandev.com/v3.15/php-8.0
#apk add php8-pecl-xmlrpc --repository http://nl.alpinelinux.org/alpine/edge/testing

RUN set -ex \
    && apk update \
    && apk add --no-cache composer openssl git bash \
    php8-pecl-swoole \
    && apk del --purge *-dev \
    && echo "swoole.use_shortname = 'Off'" >> /etc/php8/conf.d/50_swoole.ini \
    && echo "memory_limit=1G" > /etc/php8/conf.d/00_default.ini \
    && echo "opcache.enable_cli = 'On'" >> /etc/php8/conf.d/00_opcache.ini \
    && rm -rf /tmp/* /usr/share/man /usr/share/php8 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"
