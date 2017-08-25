FROM php:5.6-fpm-alpine
RUN apk add --no-cache \
  autoconf \
  gcc \
  make \
  openssl-dev \
  libpng-dev \
  libxml2-dev \
  alpine-sdk \
  gettext-dev \
  pcre-dev \
  libxslt-dev \
  libjpeg \
&& docker-php-ext-install \
  gd \
  mysql \
  mysqli \
  opcache \
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
  xsl \
  wddx \
  pdo_mysql \
&& apk del \
  autoconf \
  gcc \
  make \
  openssl-dev \
  alpine-sdk \
  libxml2-dev

ENTRYPOINT ["docker-php-entrypoint"]
EXPOSE 9000

CMD ["php-fpm"]
