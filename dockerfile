FROM php:8.3-apache
# Install dependencies for the GD extension
RUN apt-get update && apt-get install -y \
    default-mysql-client \
    default-mysql-server \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

RUN docker-php-ext-install mysqli
