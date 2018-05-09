FROM registry.cn-hangzhou.aliyuncs.com/xavier/nginx-php-fpm
MAINTAINER Xavier <FineJadeXavier@gmail.com>
RUN cd /home && wget https://raw.githubusercontent.com/FineJadeXavier/laravel/master/larago && \
    sed -i '/^$/d' larago && chmod +x larago
ENTRYPOINT ["/home/./larago"]
