FROM registry.cn-hangzhou.aliyuncs.com/xavier/nginx-php-fpm
MAINTAINER Xavier
RUN apt-get update && apt-get install -y vi 
RUN echo "alias laravel='~/.composer/vendor/bin/laravel'" >> ~/.bashrc
RUN source ~/.bashrc 
RUN composer global require "laravel/installer"
RUN sed -i '5c root /var/www/default/public;' /etc/nginx/sites-enabled/default.conf
RUN sed -i '25c try_files $uri $uri/ /index.php?$query_string;' /etc/nginx/sites-enabled/default.conf
