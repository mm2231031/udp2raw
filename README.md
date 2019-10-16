# udp2raw in docker

udp2raw的docker封装版

## 用法

### 服务端
    docker run -d --name udp2raw --net host --restart unless-stopped jackmo233/udp2raw:latest -s -l0.0.0.0:4096  -r127.0.0.1:7777   -k "passwd" --raw-mode faketcp   --cipher-mode xor
    
### 客户端
    docker run -d --name udp2raw --net host --restart unless-stopped jackmo233/udp2raw:latest -c -l0.0.0.0:3333  -r44.55.66.77:4096 -k "passwd" --raw-mode faketcp   --cipher-mode xor
    
### 使用配置文件
    docker run -d --name udp2raw --net host --restart unless-stopped -v <you conf file>:/config/udp2raw.conf jackmo233/udp2raw:latest --conf-file /config/udp2raw.conf
    
### 注意事项
    以上命令已经配置好重启策略，只有在手动停止容器时才会停止，其他时候自动启动，容器内不支持-a参数
    
## 容器操作

### 查看运行中的容器
    docker ps
    
### 查看所有容器
    docker ps --all
    
### 运行容器
    docker start udp2raw
    
### 停止容器
    docker stop udp2raw
    
### 重启容器
    docker restart udp2raw
    
### 删除容器
    docker rm udp2raw
    
### 查看日志
    docker logs udp2raw
    
