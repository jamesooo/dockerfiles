FROM ubuntu:trusty

COPY docker-php-entrypoint /usr/bin/docker-php-entrypoint

RUN apt-get update \
&& apt-get install -y \
  php5 \
  php5-common \
  php5-cli \
  php5-fpm \
  php5-curl \
  php5-gd \
  php5-mysqlnd \
  php5-xsl \
  php5-json \
  php5-readline \
&& rm -rf /var/lib/apt/lists/*

COPY php-fpm.d/php-fpm.conf /etc/php5/fpm/php-fpm.conf
COPY php-fpm.d/docker.conf /etc/php5/fpm/docker.conf
COPY php-fpm.d/zz-docker.conf /etc/php5/fpm/zz-docker.conf

ENTRYPOINT ["docker-php-entrypoint"]
EXPOSE 9000

CMD ["php5-fpm"]
