FROM php:5.6-fpm-alpine
# install base laravel stuff
RUN apk add --no-cache \
  libmcrypt-dev \
&& docker-php-ext-install mcrypt pdo

ENTRYPOINT ["docker-php-entrypoint"]

EXPOSE 9000

CMD ["php-fpm"]
