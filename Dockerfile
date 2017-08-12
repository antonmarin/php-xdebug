FROM php:5-fpm

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug