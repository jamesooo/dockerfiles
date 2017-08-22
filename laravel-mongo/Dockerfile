FROM jonealcmd/laravel-mongo
RUN apk add --no-cache \
  autoconf \
  gcc \
  make \
  alpine-sdk \
&& pecl install xdebug \
&& docker-php-ext-enable xdebug \
&& apk del \
  autoconf \
  gcc \
  make \
  alpine-sdk

ENTRYPOINT ["docker-php-entrypoint"]
EXPOSE 9000

CMD ["php-fpm"]
