

#linux/arm64,linux/amd64,linux/riscv64,linux/ppc64le,linux/s390x,linux/386,linux/arm/v7,linux/arm/v6
#docker build --build-arg ALPINE_VERSION=3.8 -t tw2066/php:5.6-alpine-v3.8-fpm .

##/Users/tangwei/WWW/test/laravel-demo/www


ARG ALPINE_VERSION

#FROM alpine:3.8
FROM alpine:$ALPINE_VERSION

LABEL maintainer="tangwei" version="1.0" license="MIT"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories


RUN set -ex \
    && apk update \
    && apk add --no-cache \
    ca-certificates \
    curl \
    wget \
    tar \
    xz \
    tzdata \
    pcre \
    php5 \
    php5-bcmath \
    php5-curl \
    php5-ctype \
    php5-dom \
    php5-gd \
    php5-iconv \
    php5-openssl \
    php5-pdo \
    php5-pdo_mysql \
    php5-pdo_sqlite \
    php5-phar \
    php5-posix \
    php5-sockets \
    php5-sysvshm \
    php5-sysvmsg \
    php5-sysvsem \
    php5-zip \
    php5-zlib \
    php5-xml \
    php5-xmlreader \
    php5-pcntl \
    php5-opcache \
    php5-fpm \
    && ln -sf /usr/bin/php5 /usr/bin/php \
    # install composer
    && wget -nv -O /usr/local/bin/composer https://getcomposer.org/download/latest-1.x/composer.phar \
    && chmod u+x /usr/local/bin/composer \
    && apk del --purge *-dev \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/share/php5 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

COPY php-fpm.conf /etc/php5/php-fpm.conf
COPY docker.conf /etc/php5/fpm.d/docker.conf
COPY zz-docker.conf /etc/php5/fpm.d/zz-docker.conf
COPY www.conf /etc/php5/fpm.d/www.conf

EXPOSE 9000

CMD php-fpm5 -F
