
#docker build --build-arg ALPINE_VERSION=3.16 -t tw2066/php:8.1-alpine-v3.16-swoole .
#docker buildx build --build-arg ALPINE_VERSION=3.16 -t tw2066/php:8.1-alpine-v3.16-swoole  --platform=linux/arm,linux/arm64,linux/amd64 . --push

ARG ALPINE_VERSION

FROM tw2066/php:8.1-alpine-v${ALPINE_VERSION}-base

RUN set -ex \
    && apk update \
    && apk add --no-cache openssl git bash \
    php81-pecl-swoole \
    && apk del --purge *-dev \
    && echo "swoole.use_shortname = 'Off'" >> /etc/php81/conf.d/50_swoole.ini \
    && echo "memory_limit=1G" > /etc/php81/conf.d/00_default.ini \
    && echo "opcache.enable_cli = 'On'" >> /etc/php81/conf.d/00_opcache.ini \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/share/php81 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

EXPOSE 9501