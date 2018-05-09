#!/bin/bash
mkdir xavier_temp && cd xavier_temp
tee larago <<-'EOF'
echo "alias laravel='~/.composer/vendor/bin/laravel'" >> ~/.bashrc && echo "alias rm='rm -rf'" >> ~/.bashrc && source ~/.bashrc
composer global require "laravel/installer"
sed -i '5c root /var/www/public;' /etc/nginx/sites-enabled/default.conf
rm -rf /var/www 
cd /var && ~/.composer/vendor/bin/laravel new www
mkdir -p /var/www/storage/logs/  &&  touch /var/www/storage/logs/laravel.log &&  chmod -R 777 /var/www/storage/
EOF

tee Dockerfile <<-'EOF'
FROM laravel:temp
MAINTAINER Xavier <FineJadeXavier@gmail.com>
RUN cd /home && chmod +x larago
EXPOSE 80 443 9000 22
EOF

docker run -d --name laravel_temp registry.cn-hangzhou.aliyuncs.com/xavier/nginx-php-fpm

docker cp larago laravel_temp:/home/

docker commit -a 'Xavier' -p -m 'laravel' laravel_temp laravel:temp

docker build -t laravel:temp1 .

docker run -d --name laravel_temp1 laravel:temp1

docker exec -it laravel_temp1 /bin/bash /home/larago
docker commit -a 'Xavier' -p -m 'laravel'  laravel_temp1 laravel
docker rm -f laravel_temp laravel_temp1 && docker rmi -f laravel:temp1 laravel:temp registry.cn-hangzhou.aliyuncs.com/xavier/nginx-php-fpm
cd ../ && rm -rf xavier_temp

