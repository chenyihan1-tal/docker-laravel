#### 通过这个，你可以快速构建一个docker的laravel镜像
#### 环境是 php 7.2.4 和 nginx ，已将composer源改为国内源

## 你可以这样使用它

#### step1 clone代码到本地
    git clone https://github.com/FineJadeXavier/docker-laravel.git

#### step2 进入laravel目录
    cd docker-laravel

#### step3 构建镜像
    docker build -t xavier/laravel .

#### step4 运行镜像
    docker run -d --name your-laravel -p80:80 xavier/laravel

#### step5 进入镜像的终端
    docker exec -it your-laravel /bin/bash

#### step6 创建一个新的laravel项目
    rm -rf /var/www  
    cd /var && laravel new www

#### step7 创建日志目录并给权限
    touch /var/www/storage/logs/laravel.log
    chmod -R 777 /var/www/storage
## 前面的3步你也可以换成这个
    docker build -t xavier/laravel https://raw.githubusercontent.com/FineJadeXavier/docker-laravel/master/Dockerfile

## 打开浏览器访问[http://localhost/](http://localhost/ "Laravel")
## 就可以看见你的全新的laravel了

[打开查看截图](http://p9ha5311u.bkt.clouddn.com/imagelaravel.png "Laravel")

## Nginx配置文件
    /etc/nginx/sites-enabled/default.conf


#### 运行的时候可能会出现:
Do not run Composer as root/super user! See https://getcomposer.org/root for details
#### 这是一个警告，让我们不要在root用户下使用composer,无视就好
