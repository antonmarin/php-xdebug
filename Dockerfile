FROM php:5-apache

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug