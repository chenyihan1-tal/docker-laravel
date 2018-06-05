FROM registry.cn-hangzhou.aliyuncs.com/xavier/nginx-php-fpm
MAINTAINER xavier
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com
RUN echo "alias laravel='~/.composer/vendor/bin/laravel'" >> ~/.bashrc && \
    source ~/.bashrc \
RUN composer global require "laravel/installer"
RUN sed -i '5c root /var/www/public;' /etc/nginx/sites-enabled/default.conf
RUN sed -i '25c try_files $uri $uri/ /index.php?$query_string;' /etc/nginx/sites-enabled/default.conf
RUN rm -rf /var/www