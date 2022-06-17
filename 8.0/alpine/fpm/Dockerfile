
#docker build --build-arg ALPINE_VERSION=3.16 -t tw2066/php:8.0-alpine-v3.16-fpm .
ARG ALPINE_VERSION

FROM tw2066/php:8.0-alpine-v${ALPINE_VERSION}-base

#指定docker安装源
#apk add php8-pecl-xlswriter --repository http://nl.alpinelinux.org/alpine/edge/testing
#apk add php8-pecl-grpc --repository http://nl.alpinelinux.org/alpine/edge/testing
#apk add php8-mongodb --repository https://php.hernandev.com/v3.15/php-8.0
#apk add php8-pecl-xmlrpc --repository http://nl.alpinelinux.org/alpine/edge/testing

RUN set -ex \
    && apk update \
    && apk add --no-cache openssl git bash \
    php8-fpm \
#    php8-ftp \
#    php8-pecl-mcrypt \
#    php8-mysqli \
#    php8-pdo_pgsql \
#    php8-sqlite3 \
#    php8-soap \
#    php8-shmop \
#    php8-gettext \
#    php8-imap \
#    php8-pecl-rdkafka \
    && apk del --purge *-dev \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/share/php8 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

COPY docker.conf /etc/php8/php-fpm.d/docker.conf
COPY zz-docker.conf /etc/php8/php-fpm.d/zz-docker.conf

EXPOSE 9000

CMD php-fpm8 -F