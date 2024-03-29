FROM php:7.4-fpm
USER root
# RUN commands

# Устанавливаем рабочую директорию
WORKDIR /var/www

# Копируем composer.lock и composer.json
#COPY composer.lock composer.json /var/www/


# Устанавливаем зависимости
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl \
    libpq-dev \
    libonig-dev \
    libzip-dev \
    libicu-dev \
    libxslt1-dev

# Очищаем кэш
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
#RUN apt-get update && \
#    apt-get install -y libxslt1-dev && \
#    docker-php-ext-install xsl &&
# Устанавливаем расширения PHP
RUN docker-php-ext-install pdo_pgsql mbstring zip exif pcntl gd intl xsl

# Загружаем актуальную версию Composer
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Создаём пользователя и группу www для приложения Laravel
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Копируем содержимое текущего каталога в рабочую директорию
COPY . /var/www
COPY --chown=www:www . /var/www

# Меняем пользователя на www
USER www

# В контейнере открываем 9000 порт и запускаем сервер php-fpm
EXPOSE 9000
CMD ["php-fpm"]
