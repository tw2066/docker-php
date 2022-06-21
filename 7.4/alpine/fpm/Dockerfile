
#docker build --build-arg ALPINE_VERSION=3.15 -t tw2066/php:7.4-alpine-v3.15-fpm .
ARG ALPINE_VERSION

FROM tw2066/php:7.4-alpine-v${ALPINE_VERSION}-base

RUN set -ex \
    && apk update \
    && apk add --no-cache openssl git bash \
    php7-fpm \
    && apk del --purge *-dev \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/share/php7 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

COPY docker.conf /etc/php7/php-fpm.d/docker.conf
COPY zz-docker.conf /etc/php7/php-fpm.d/zz-docker.conf

EXPOSE 9000

CMD php-fpm7 -F