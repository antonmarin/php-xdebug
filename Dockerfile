FROM php:7.2-cli

RUN pecl install xdebug-2.6.0RC2 \
    && docker-php-ext-enable xdebug
COPY xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
