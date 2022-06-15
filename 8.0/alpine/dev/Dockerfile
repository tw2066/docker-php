

FROM alpine:3.16

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

ENV PHPIZE_DEPS="autoconf dpkg-dev dpkg file g++ gcc libc-dev make php8-dev php8-pear pkgconf re2c pcre-dev pcre2-dev zlib-dev libtool automake"

# update
RUN set -ex \
    && apk update \
    && apk add --no-cache libstdc++ composer openssl git bash \
    && apk add --no-cache $PHPIZE_DEPS libaio-dev openssl-dev curl-dev \
    && ln -s /usr/bin/phpize8 /usr/local/bin/phpize \
    && ln -s /usr/bin/php-config8 /usr/local/bin/php-config \
    && ln -s /usr/bin/pecl8 /usr/local/bin/pecl \
    # php info
    && php -v \
    && php -m \
    # ---------- clear works ----------
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"
