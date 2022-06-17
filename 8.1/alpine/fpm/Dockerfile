
#docker build  --no-cache --build-arg ALPINE_VERSION=3.16 -t tw2066/php:8.1-alpine-v3.16-fpm .
#docker buildx build --build-arg ALPINE_VERSION=3.16 -t tw2066/php:8.1-alpine-v3.16-fpm  --platform=linux/arm,linux/arm64,linux/amd64 . --push


ARG ALPINE_VERSION

FROM tw2066/php:8.1-alpine-v${ALPINE_VERSION}-base


RUN set -ex \
    && apk update \
    && apk add --no-cache openssl git bash \
    php81-fpm \
    && apk del --purge *-dev \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/share/php81 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

COPY docker.conf /etc/php81/php-fpm.d/docker.conf
COPY zz-docker.conf /etc/php81/php-fpm.d/zz-docker.conf

EXPOSE 9000

CMD php-fpm81 -F