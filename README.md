
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

### Open localhost[http://localhost/](http://localhost/ "Laravel")

#### Enjoy

![截图](http://zhio.qiniu.finejadexavier.cn/imageimagelaravel.png)

## Nginx Config file
    /etc/nginx/sites-enabled/default.conf

#### 运行的时候可能会出现:

Do not run Composer as root/super user! See https://getcomposer.org/root for details

#### 这是一个警告，让我们不要在root用户下使用composer,无视就好

## 如何使用MySQL以及redis？

#### 首先你需要一个MySQL(redis)容器，第三步的的时候加上--link=mysql:your-mysql就可以了

    docker run -d --name your-laravel -p80:80 --link=mysql:mysql xavier/laravel
    
#### redis 同理

