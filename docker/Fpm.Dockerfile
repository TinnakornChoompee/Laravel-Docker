FROM php:7.3-fpm

RUN apt-get update \
&& docker-php-ext-install pdo_mysql \ 
&& apt-get install curl \
&& curl -s https://getcomposer.org/installer | php \
&& mv composer.phar /usr/local/bin/composer