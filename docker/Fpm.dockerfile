FROM php:8.0-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

# Install unzip utility and libs needed by zip PHP extension
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip \
    nodejs \
    npm

# Для включения xdebug рвскомментировать
#RUN pecl install xdebug-3.1.5 && docker-php-ext-enable xdebug
#ADD docker/conf/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

RUN docker-php-ext-install zip pdo_mysql pdo_mysql mysqli

WORKDIR /var/www/php-test
