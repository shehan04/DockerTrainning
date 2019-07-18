FROM php:7-fpm


#RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client && docker-php-ext-install mcrypt pdo_mysql
RUN apt-get update -y && apt-get install -y openssl zip unzip git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /app

COPY . /app

RUN composer install
RUN php artisan key:generate
RUN php artisan migrate
CMD php artisan serve --host=0.0.0.0 --port=8000

EXPOSE 8000