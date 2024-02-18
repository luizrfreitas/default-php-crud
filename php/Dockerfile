FROM php:8.3

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql zip
    
COPY --from=composer/composer:latest-bin /composer /usr/bin/composer

# Install Xdebug
# RUN apt-get install php-xdebug


