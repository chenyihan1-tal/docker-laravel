
## How to use?

### You can `pull` the image

    docker pull registry.cn-hangzhou.aliyuncs.com/xavier/laravel

### Or You can build it from scratch

#### 1. Build the image

    docker build -t xavier/laravel https://raw.githubusercontent.com/FineJadeXavier/docker-laravel/master/Dockerfile

#### 2. Run new container

    docker run -d --name your-laravel -p80:80 xavier/laravel

#### 3. Run the `bash` inside the container
    docker exec -it your-laravel /bin/bash

#### 4. Create new `Laravel` project inside the container
    rm -rf /var/www  
    cd /var && laravel new www

#### 5. Create files and associate the appropriate permissions
    touch /var/www/storage/logs/laravel.log
    chmod -R 777 /var/www/storage

### Open [localhost](http://localhost/)

#### Enjoy!

## Nginx Config file
    /etc/nginx/sites-enabled/default.conf

#### This error may appear:

Do not run Composer as root/super user! See https://getcomposer.org/root for details


## How to use MySQL and Redis？

#### First you need a MySQL (redis) container. In the third step, add --link=mysql:your-mysql.

    docker run -d --name your-laravel -p80:80 --link=mysql:mysql xavier/laravel
    
#### And the some with Redis

