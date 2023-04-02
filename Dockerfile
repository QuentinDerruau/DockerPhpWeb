FROM php:8.0-apache as base

RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql

COPY ./src /var/www/html

EXPOSE 80
