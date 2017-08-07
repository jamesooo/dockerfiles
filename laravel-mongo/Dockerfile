FROM jonealcmd/laravel:latest

# install mongo extension
RUN apk add --no-cache \
  autoconf \
  gcc \
  make \
  openssl-dev \
  alpine-sdk \
  libmemcached-dev \
  cyrus-sasl-dev \
&& docker-php-ext-install mcrypt pdo \
&& printf "\n" | pecl install mongo \
&& pecl install memcached-2.2.0 \
&& pecl clear-cache \
&& docker-php-ext-enable mongo memcached \
&& apk del \
  autoconf \
  gcc \
  make \
  openssl-dev \
  alpine-sdk \
  cyrus-sasl-dev

ENTRYPOINT ["docker-php-entrypoint"]
EXPOSE 9000

CMD ["php-fpm"]
