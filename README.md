# devops-admin

后台管理后端代码

### 环境要求

go 1.21

node版本: v14.16.0

npm版本: 6.14.11


### 获取代码

```bash
# 获取后端代码
git clone https://github.com/devops-base/devops-admin.git

```

### 启动说明

#### 服务端启动说明

```bash
# 进入 metadata-server 后端项目
cd ./devops-admin

# 更新整理依赖
go mod tidy

# 编译项目
go build

# 修改配置 
# 文件路径  go-admin/config/settings.yml
vi ./config/setting.yml 

# 1. 配置文件中修改数据库信息 
# 注意: settings.database 下对应的配置数据
# 2. 确认log路径

# 导入数据库
将sql目录下的sql导入到你本地数据库,表里面包含了sys_api表的的数据,不必在自己生成sys_api表的数据.
```

#### sys_api 表的数据如何添加

在项目启动时，使用`-a true` 系统会自动添加缺少的接口数据
```bash
./devops-admin server -c config/settings.yml -a true
```

#### 使用docker 编译启动

```shell
# 编译镜像
docker build -t devops-admin .

# 启动容器，第一个go-admin是容器名字，第二个go-admin是镜像名称
# -v 映射配置文件 本地路径：容器路径
docker run --name devops-admin -p 8000:8000 -v /config/settings.yml:/config/settings.yml -d devops-admin
```

#### 文档生成

```bash
swag init --parseDependency --parseDepth=6 -g cmd/main.go
```

#### 交叉编译

```bash
# windows
env GOOS=windows GOARCH=amd64 go build main.go

# or
# linux
env GOOS=linux GOARCH=amd64 go build main.go
```