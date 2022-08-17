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
ADD docker/conf/php.ini /usr/local/etc/php/php.ini

RUN docker-php-ext-install zip pdo_mysql pdo_mysql mysqli
RUN npm install --global gulp-cli
RUN npm install -g bower
# Альтернативный способ установить composer
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/laravel-docker
