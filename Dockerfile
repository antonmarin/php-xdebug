FROM php:7-cli

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug