<<<<<<< HEAD
FROM php:8.1-apache

WORKDIR /var/www/html

COPY . .

RUN apt-get update \
    && apt-get install -y \
        libzip-dev \
        zip \
        unzip \
        git \
        curl \
        libpng-dev \
        libonig-dev \
        libxml2-dev \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip \
    && a2enmod rewrite
=======
FROM tutum/lamp:latest
EXPOSE 80 3306
>>>>>>> 065947b9b758ad67606d1355b8a4554e035a615e
