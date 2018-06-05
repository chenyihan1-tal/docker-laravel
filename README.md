# 这是一个laravel的Dockerfile文件

## 你可以这样使用

### clone代码到本地
    git clone https://github.com/FineJadeXavier/laravel.git

### 切换到laravel目录
    cd laravel

### 构建镜像
    docker build -t xavier/laravel:latest .

### 运行镜像
    docker run -d --name your-laravel -p80:80 xavier/laravel

### 进入镜像的终端
    docker exec -it your-laravel /bin/bash

### 创建一个新的laravel项目
    cd /var/ && laravel new www


## 或者你可以这样使用
    docker build https://github.com/FineJadeXavier/laravel