
#docker build --build-arg ALPINE_VERSION=3.16 -t tw2066/php:8.0-alpine-v3.16-base .

ARG ALPINE_VERSION

#FROM alpine:3.16
FROM alpine:$ALPINE_VERSION

LABEL maintainer="tangwei" version="1.0" license="MIT"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

#指定docker安装源
#apk add php8-pecl-xlswriter --repository http://nl.alpinelinux.org/alpine/edge/testing
#apk add php8-pecl-grpc --repository http://nl.alpinelinux.org/alpine/edge/testing
#apk add php8-mongodb --repository https://php.hernandev.com/v3.15/php-8.0
#apk add php8-pecl-xmlrpc --repository http://nl.alpinelinux.org/alpine/edge/testing

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
    php8 \
    php8-bcmath \
    php8-curl \
    php8-ctype \
    php8-dom \
    php8-fileinfo \
    php8-gd \
    php8-iconv \
    php8-mbstring \
    php8-mysqlnd \
    php8-openssl \
    php8-pdo \
    php8-pdo_mysql \
    php8-pdo_sqlite \
    php8-phar \
    php8-posix \
    php8-pecl-redis \
    php8-sockets \
    php8-sodium \
    php8-sysvshm \
    php8-sysvmsg \
    php8-sysvsem \
    php8-simplexml \
    php8-tokenizer \
    php8-zip \
    php8-zlib \
    php8-xml \
    php8-xmlreader \
    php8-xmlwriter \
    php8-pcntl \
    php8-opcache \
    && ln -sf /usr/bin/php80 /usr/bin/php \
    # install composer
    && wget -nv -O /usr/local/bin/composer https://mirrors.aliyun.com/composer/composer.phar \
    && chmod u+x /usr/local/bin/composer \
    && apk del --purge *-dev \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/share/php8 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

