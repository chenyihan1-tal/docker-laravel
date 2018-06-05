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
    cd /var/ && laravel new www

## 前面的3步你也可以换成这个
    docker build -t xavier/laravel https://raw.githubusercontent.com/FineJadeXavier/docker-laravel/master/Dockerfile

## Nginx配置文件
    /etc/nginx/sites-enabled/default.conf
