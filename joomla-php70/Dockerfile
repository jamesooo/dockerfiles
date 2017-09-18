FROM php:7.0-fpm-alpine
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
  libjpeg-turbo-dev \
  libpng-dev \
&& docker-php-ext-configure gd \
  --with-jpeg-dir=/usr/include/ \
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
  memcached \
  msgpack \
  apcu \
&& docker-php-ext-enable \
  apcu \
  igbinary \
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
