FROM php:5-cli

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug