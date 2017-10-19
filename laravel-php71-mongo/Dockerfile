FROM ubuntu:xenial

COPY docker-php-entrypoint /usr/bin/docker-php-entrypoint

RUN apt-get update \
&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
  software-properties-common \
&& LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php \
&& apt-get update \
&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
  php7.1-cli \
  php7.1-common \
  php7.1-curl \
  php7.1-dev \
  php7.1-fpm \
  php7.1-json \
  php7.1-mbstring \
  php7.1-opcache \
  php7.1-readline \
  php7.1-xml \
  php7.1-zip \
  pkg-config \
&& rm -rf /var/lib/apt/lists/* \
&& pecl install mongodb \
&& echo "extension=mongodb.so" >> /etc/php/7.1/fpm/php.ini

COPY php-fpm.d/php-fpm.conf /etc/php/7.1/fpm/php-fpm.conf
COPY php-fpm.d/docker.conf /etc/php/7.1/fpm/docker.conf
COPY php-fpm.d/zz-docker.conf /etc/php/7.1/fpm/zz-docker.conf

ENTRYPOINT ["docker-php-entrypoint"]
EXPOSE 9000

CMD ["php-fpm7.1"]
