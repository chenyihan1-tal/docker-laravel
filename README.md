
## 如何使用？

#### 1. 构建镜像

###### 你可以直接拉取已构建好的镜像

    docker pull registry.cn-hangzhou.aliyuncs.com/xavier/laravel

###### 或者自己手动构建

    docker build -t xavier/laravel https://raw.githubusercontent.com/FineJadeXavier/docker-laravel/master/Dockerfile

#### <span id="step2">2. 运行一个新的容器</span>

    docker run -d --name your-laravel -p80:80 -p443:443 xavier/laravel

#### 3. 进入容器的终端
    docker exec -it your-laravel /bin/bash

#### 4. 在容器中创建一个新的laravel项目
    rm -rf /var/www  
    cd /var && laravel new www

#### 5. 创建日志目录并给权限
    touch /var/www/storage/logs/laravel.log
    chmod -R 777 /var/www/storage

#### 6. 打开浏览器访问[http://localhost/](http://localhost/ "Laravel")即可看到运行中的Laravel了

## 其他问题

### 1. nginx配置文件在哪？
    /etc/nginx/sites-enabled/default.conf
    
### 2. 怎么安装最新/指定版本的Laravel？

###### 删掉/var下的www目录,然后运行安装命令

        cd /var
        rm -rf www
        laravel new www ## 安装最新版本
        ## 或者安装指定版本 composer create-project --prefer-dist laravel/laravel blog "5.5.*"  


### 4. 运行的时候可能会出现:

    Do not run Composer as root/super user! See https://getcomposer.org/root for details

###### 这是一个警告，让我们不要在root用户下使用composer,无视就好

### 5. 如何使用MySQL以及redis？

###### 首先你需要一个MySQL/redis容器，在[第2步](#step2)的时候加上--link=mysql:your-mysql就可以了

    docker run -d --name your-laravel -p80:80 -p443:443 --link=mysql:mysql xavier/laravel
    
###### redis 同理

