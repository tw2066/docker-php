
#docker build --build-arg ALPINE_VERSION=3.16 -t tw2066/php:8.1-alpine-v3.16-base .
#linux/arm64, linux/amd64, linux/riscv64, linux/ppc64le, linux/s390x, linux/386, linux/arm/v7, linux/arm/v6
#docker buildx build --build-arg ALPINE_VERSION=3.16 -t tw2066/php:8.1-alpine-v3.16-base  --platform=linux/arm64,linux/amd64,linux/ppc64le,linux/s390x,linux/386,linux/arm/v7,linux/arm/v6 . --push

ARG ALPINE_VERSION

#FROM alpine:3.16
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
    php81 \
    php81-bcmath \
    php81-curl \
    php81-ctype \
    php81-dom \
    php81-fileinfo \
    php81-gd \
    php81-iconv \
    php81-mbstring \
    php81-mysqlnd \
    php81-openssl \
    php81-pdo \
    php81-pdo_mysql \
    php81-pdo_sqlite \
    php81-phar \
    php81-posix \
    php81-pecl-redis \
    php81-sockets \
    php81-sodium \
    php81-sysvshm \
    php81-sysvmsg \
    php81-sysvsem \
    php81-simplexml \
    php81-tokenizer \
    php81-zip \
    php81-zlib \
    php81-xml \
    php81-xmlreader \
    php81-xmlwriter \
    php81-pcntl \
    php81-opcache \
    && ln -sf /usr/bin/php81 /usr/bin/php \
    && wget -nv -O /usr/local/bin/composer https://mirrors.aliyun.com/composer/composer.phar \
    && chmod u+x /usr/local/bin/composer \
    && apk del --purge *-dev \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

