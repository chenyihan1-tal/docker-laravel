FROM richarvey/nginx-php-fpm

# install laravel
RUN composer global require "laravel/installer" \
    && echo "alias laravel='~/.composer/vendor/bin/laravel'" >> ~/.bashrc \
    && source ~/.bashrc \
    && rm -rf /etc/nginx/sites-enabled/*

ADD conf/default.conf /etc/nginx/sites-enabled/

WORKDIR /var/www/default/

