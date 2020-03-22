<h1 align="center">Docker-Laravel</h1>
<h6 align="center">通过这个，你可以用Docker快速构建一个Laravel的运行环境<br />You can build a Laravel's running environment with Docker by it</h6>

## 开始使用（Getting Started）

### 使用条件（Prerequisites）

Docker

### 0. 克隆 (Clone)

```bash
git clone https://github.com/xaviercry/docker-laravel
```

### 1. 构建 (Build）

```bash
cd docker-laravel
docker build -t laravel
```

### 2. 运行 (Run)

```bash
docker run -d --name laravel -p8080:80 -p443:443 -v <your-laravel-project>:/var/www/default/  laravel
```

> 你可以加上`-v <nginx-conf-dir>:/etc/nginx/sites-enabled/`来随时更改nginx配置文件
> Use `-v <nginx-conf-dir>:/etc/nginx/sites-enabled/` to edit the nginx conf anytime


### 3. 其他 (Other)

#### 如果你本地没有Laravel项目 (If you dont't hava a laravel project in your computer)

```bash
docker exec -it laravel /bin/bash
cd /var/www/
laravel new <your-project-name>
rm -rf default && mv <your-project-name> default
```
    
## 致谢（Acknowledgments）

* 任何使用过这个项目的人（Hat tip to anyone whose code was used）
* 感谢[@atefBB](https://github.com/atefBB)对README进行英文版本的翻译（Englis Translation translated by [@atefBB](https://github.com/atefBB)）

