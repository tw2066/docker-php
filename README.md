# docker-php
### 以alpine镜像构建
* fpm环境
```
tag: 8.0-alpine-v3.16-fpm
```
* swoole环境
```
tag: 8.0-alpine-v3.16-swoole
```

### PHP信息
```shell
[PHP Modules]
bcmath
Core
ctype
curl
date
dom
fileinfo
filter
gd
hash
iconv
igbinary
json
libxml
mbstring
mysqlnd
openssl
pcntl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
redis
Reflection
session
SimpleXML
sockets
sodium
SPL
standard
swoole
sysvmsg
sysvsem
sysvshm
tokenizer
xml
xmlreader
xmlwriter
Zend OPcache
zip
zlib

[Zend Modules]
Zend OPcache

```

### 添加php扩展
* apk直接添加
1. 支持扩展可以进入容器 apk update && apk search php8-* 查看
2. apk add ${包}