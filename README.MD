一个简单的ss服务端Dockerfile

### Usage:
`git clone https://github.com/Ryuushii/ss-docker.git`


**修改ssconfig.文件**

``` json
{
    "server":"0.0.0.0",
    "server_port":2333, //改成你希望的端口
    "local_address":"127.0.0.1",
    "local_port":1080,
    "password":"2333",//改成你希望的密码
    "timeout":300,
    "method":"aes-256-cfb"
}
```
构建： 

`docker build -t ss-docker .`

运行： 

`docker run -d -p 2333:2333 ssdocker:latest`