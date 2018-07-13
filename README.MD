一个简单的ss服务端Dockerfile

### Usage:
`git clone https://github.com/Ryuushii/ss-docker.git`


**修改ssconfig.json文件**

``` json
{
    "server":"0.0.0.0",
    "server_port":2333, 
    "local_address":"127.0.0.1",
    "local_port":1080,
    "password":"2333",
    "timeout":300,
    "method":"aes-256-cfb"
}
```
在`server_port`处改成你自己的端口，在`password`处改成你自己的密码,详见[此处](https://wiki.archlinux.org/index.php/Shadowsocks_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))


构建： 

`docker build -t ss-docker .`

运行： 

`docker run -d -p 2333:2333 ss-docker:latest`
其中`-p`选项是进行一个端口映射 `:`左为宿主机的端口 *(也就是配置ss客户端所需要的)* ，右为docker容器暴露的端口。