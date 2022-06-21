
#docker build --build-arg ALPINE_VERSION=3.15 -t tw2066/php:7.4-alpine-v3.15-dev .
ARG ALPINE_VERSION

FROM tw2066/php:7.4-alpine-v${ALPINE_VERSION}-base

ENV PHPIZE_DEPS="autoconf dpkg-dev dpkg file g++ gcc libc-dev make php7-dev php7-pear pkgconf re2c pcre-dev pcre2-dev zlib-dev libtool automake"

# update
RUN set -ex \
    && apk update \
    && apk add --no-cache libstdc++ openssl git bash \
    && apk add --no-cache $PHPIZE_DEPS libaio-dev openssl-dev curl-dev \
    && ln -s /usr/bin/phpize7 /usr/local/bin/phpize \
    && ln -s /usr/bin/php-config7 /usr/local/bin/php-config \
    && ln -s /usr/bin/pecl7 /usr/local/bin/pecl \
    # php info
    && php -v \
    && php -m \
    # ---------- clear works ----------
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"
