
## 如何使用？

#### step1 构建镜像
    docker build -t xavier/laravel https://raw.githubusercontent.com/FineJadeXavier/docker-laravel/master/Dockerfile

#### step2 运行一个新的容器
    docker run -d --name your-laravel -p80:80 xavier/laravel

#### step3 进入容器的终端
    docker exec -it your-laravel /bin/bash

#### step4 在容器中创建一个新的laravel项目
    rm -rf /var/www  
    cd /var && laravel new www

#### step4 创建日志目录并给权限
    touch /var/www/storage/logs/laravel.log
    chmod -R 777 /var/www/storage

### 打开浏览器访问[http://localhost/](http://localhost/ "Laravel")

### 就可以看见全新的laravel了

![截图](http://zhio.qiniu.finejadexavier.cn/imageimagelaravel.png)

## Nginx配置文件在哪？
    /etc/nginx/sites-enabled/default.conf

#### 运行的时候可能会出现:

Do not run Composer as root/super user! See https://getcomposer.org/root for details

#### 这是一个警告，让我们不要在root用户下使用composer,无视就好

## 如何使用MySQL以及redis？

#### 首先你需要一个MySQL(redis)容器，第三步的的时候加上--link=mysql:your-mysql就可以了

    docker run -d --name your-laravel -p80:80 --link=mysql:mysql xavier/laravel
    
#### redis 同理

