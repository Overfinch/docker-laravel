FROM php:8.0-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

#RUN apt-get update \
#&& docker-php-ext-install pdo pdo_mysql mysqli

# Install unzip utility and libs needed by zip PHP extension
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip
RUN docker-php-ext-install zip pdo_mysql pdo_mysql mysqli

WORKDIR /var/www/laravel-docker
