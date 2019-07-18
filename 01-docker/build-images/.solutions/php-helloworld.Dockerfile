FROM php:5.6.37-apache

LABEL maintainer="Tharindu Muhandiram <tharindu.m@platformer.com>"

RUN a2enmod rewrite &&  service apache2 restart

RUN apt-get update -y && apt-get install -y sendmail libpng-dev

RUN  apt-get install -y zlib1g-dev 

RUN apt-get install -y  libcairo2-dev libjpeg62-turbo-dev libpango1.0-dev libgif-dev build-essential g++

RUN docker-php-ext-install mbstring

RUN docker-php-ext-install zip

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/  --with-jpeg-dir=/usr/include/

RUN docker-php-ext-install gd

RUN docker-php-ext-install mysqli && \
    apachectl restart

ENV SYSTEM_PATH /var/www/html/

COPY . /var/www/html
