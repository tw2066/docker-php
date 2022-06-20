#!/bin/bash

echo '.github/workflows/build.sh'

# ./.github/workflows/build.sh 8.1 8.1 3.16 base

#8.1
dir=$1
#8.1
php_version=$2

#3.16
alpine_version=$3

#eg: base fpm swoole dev
tag=$4

current_dir=$(pwd)
#docker buildx build -t pgf/hello-arch --platform=linux/arm,linux/arm64,linux/amd64 . --push
cd "${current_dir}/${dir}/alpine/$tag"
echo $(pwd);
docker_shell="docker buildx build --build-arg ALPINE_VERSION=${alpine_version}  -t tw2066/php:${php_version}-alpine-v${alpine_version}-${tag} --platform=linux/arm64,linux/amd64,linux/386 . --push"
echo $docker_shell;
$($docker_shell)



