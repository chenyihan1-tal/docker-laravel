#### 通过这个文件，你可以快速构建一个docker的laravel镜像
#### 环境是 php 7.2.4 和 nginx ，已将composer源改为国内源

## 你可以这样使用

### clone代码到本地
    git clone https://github.com/FineJadeXavier/laravel.git

### 切换到laravel目录
    cd laravel

### 构建镜像
    docker build -t xavier/laravel:latest ./Dockerfile

### 运行镜像
    docker run -d --name your-laravel -p80:80 xavier/laravel

### 进入镜像的终端
    docker exec -it your-laravel /bin/bash

### 创建一个新的laravel项目
    cd /var/ && laravel new www


## 或者你可以这样使用
    docker build https://raw.githubusercontent.com/FineJadeXavier/laravel/master/Dockerfile