FROM php:8.3-apache

# Install PDO and MySQL extensions
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql gd

# Copy custom php.ini
COPY config/php/php.ini /usr/local/etc/php/php.ini
