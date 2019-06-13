<h1 align="center">Docker-Laravel</h1>
<h6 align="center">通过这个，你可以用Docker快速构建一个Laravel的运行环境<br />You can build a Laravel's running environment with Docker by it</h6>

## 开始使用（Getting Started）

### 使用条件（Prerequisites）

装有Docker的计算机（a computer with Docker）

### 如何安装（Installing）

#### 1. 拉取镜像（`Pull` the image）
```bash
docker pull registry.cn-hangzhou.aliyuncs.com/xavier/laravel
```
Not in China ? You can
```bash
docker pull registry.us-west-1.aliyuncs.com/xavier/usa-laravel
```

#### <span id="step2">2. 运行一个新的容器</span>（Run new container）

    docker run -d --name your-laravel -p80:80 -p443:443 registry.cn-hangzhou.aliyuncs.com/xavier/laravel
    
#### 3. 进入容器的终端（Run the `bash` inside the container）

    docker exec -it your-laravel /bin/bash
    
#### 4. 在容器中创建一个新的`Laravel`项目（Create new `Laravel` project inside the container）

```bash
cd /var/www 
laravel new default
```
或者安装指定版本： composer create-project --prefer-dist laravel/laravel blog "5.5.*"
Or install the specified version：  composer create-project --prefer-dist laravel/laravel blog "5.5.*"

#### 5. 创建日志目录并给权限（Create files and associate the appropriate permissions）
```
touch /var/www/default/storage/logs/laravel.log
chmod -R 777 /var/www/default/storage
```

#### 6. 打开浏览器访问`http://yoursite/`即可看到运行中的Laravel了（Open `http://yoursite/`）

## 其他问题（Other）

### 1. nginx配置文件在哪？（Nginx Config file）

    /etc/nginx/sites-enabled/default.conf
    
### 2. 运行的时候可能会出现（This error may appear）
    Do not run Composer as root/super user! See https://getcomposer.org/root for details

###### 这是一个警告，无视就好（This is a warning,just ignore it.）

### 3. 如何使用MySQL以及Redis（How to use MySQL and Redis）？

###### 首先你需要一个MySQL/Rediss容器，在[第2步](#step2)的时候加上--link=mysql:your-mysql
###### First you need a MySQL/Redis container. In the [second step](#step2), add --link=mysql:your-mysql.

    docker run -d --name your-laravel -p80:80 -p443:443 --link=mysql:mysql registry.cn-hangzhou.aliyuncs.com/xavier/laravel
 
## 致谢（Acknowledgments）

* 任何使用过这个项目的人（Hat tip to anyone whose code was used）
* 感谢[@atefBB](https://github.com/atefBB)对README进行英文版本的翻译（Englis Translation translated by [@atefBB](https://github.com/atefBB)）

