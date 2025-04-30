FROM php:8.3-fpm

# Установка системных пакетов, включая libpq-dev для PostgreSQL
RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    unzip \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    npm \
    nodejs \
    && docker-php-ext-install pdo_pgsql pgsql mbstring zip exif pcntl

# Установка Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Создание пользователя под свой UID
ARG WWWUSER
ARG WWWGROUP
RUN groupadd -g ${WWWGROUP} www && useradd -u ${WWWUSER} -g www -m www

# Переключаемся на пользователя www
USER www

WORKDIR /var/www

CMD ["php-fpm"]

