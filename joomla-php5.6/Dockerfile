FROM php:5.6-fpm-alpine
RUN apk add --no-cache \
  autoconf \
  gcc \
  make \
  openssl-dev \
  libpng-dev \
  libmemcached-dev \
  libxml2-dev \
  alpine-sdk \
  gettext-dev \
  zeromq \
  cyrus-sasl-dev \
  pcre-dev \
&& docker-php-ext-install \
  gd \
  mysqli \
  opcache \
  soap \
  zip \
  calendar \
  exif \
  gettext \
  pcntl \
  shmop \
  sockets \
  sysvmsg \
  sysvsem \
  sysvshm \
&& printf "\n" | pecl install \
  igbinary \
  memcache \
  memcached-2.2.0 \
  msgpack-0.5.7 \
  apcu-4.0.11 \
&& docker-php-ext-enable \
  apcu \
  igbinary \
  memcache \
  memcached \
  msgpack \
&& apk del \
  autoconf \
  gcc \
  make \
  openssl-dev \
  alpine-sdk \
  libxml2-dev \
  cyrus-sasl-dev

ENTRYPOINT ["docker-php-entrypoint"]
EXPOSE 9000

CMD ["php-fpm"]
