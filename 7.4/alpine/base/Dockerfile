
#docker build --build-arg ALPINE_VERSION=3.15 -t tw2066/php:7.4-alpine-v3.15-base .

ARG ALPINE_VERSION

#FROM alpine:3.15
FROM alpine:$ALPINE_VERSION

LABEL maintainer="tangwei" version="1.0" license="MIT"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories


RUN set -ex \
    && apk update \
    && apk add --no-cache \
    # Install base packages ('ca-certificates' will install 'nghttp2-libs')
    ca-certificates \
    curl \
    wget \
    tar \
    xz \
    tzdata \
    pcre \
    php7 \
    php7-bcmath \
    php7-curl \
    php7-ctype \
    php7-dom \
    php7-fileinfo \
    php7-gd \
    php7-iconv \
    php7-mbstring \
    php7-mysqlnd \
    php7-mysqli \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_sqlite \
    php7-phar \
    php7-posix \
    php7-pecl-redis \
    php7-sockets \
    php7-sodium \
    php7-sysvshm \
    php7-sysvmsg \
    php7-sysvsem \
    php7-simplexml \
    php7-tokenizer \
    php7-zip \
    php7-zlib \
    php7-xml \
    php7-xmlreader \
    php7-xmlwriter \
    php7-pcntl \
    php7-opcache \
    && ln -sf /usr/bin/php7 /usr/bin/php \
    # install composer
    && wget -nv -O /usr/local/bin/composer https://mirrors.aliyun.com/composer/composer.phar \
    && chmod u+x /usr/local/bin/composer \
    && apk del --purge *-dev \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/share/php7 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

