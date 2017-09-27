FROM ubuntu:trusty

COPY docker-php-entrypoint /usr/bin/docker-php-entrypoint

RUN apt-get update -y \
&& apt-get install -y \
  php5 \
  php5-fpm \
  php5-cli \
  php5-common \
  php5-curl \
  php5-gd \
  php5-json \
  php5-mcrypt \
  php5-mongo \
&& rm -rf /var/lib/apt/lists/*

COPY php-fpm.d/php-fpm.conf /etc/php5/fpm/php-fpm.conf
COPY php-fpm.d/docker.conf /etc/php5/fpm/docker.conf
COPY php-fpm.d/zz-docker.conf /etc/php5/fpm/zz-docker.conf

ENTRYPOINT ["docker-php-entrypoint"]
WORKDIR /var/www/html
EXPOSE 9000

CMD ["php-fpm"]
