# Introduction
urepo is a project that can create your Linux software repository, include  Arch, Debian and other distributions. To use it, you need to place software packages and package database to OneDrive, [arch-build](https://github.com/vifly/arch-build) and [debian-build](https://github.com/vifly/debian-build) can help you to do this.

# Getting started


## Deployment
### Vercel
Just click the button below. You need to fill in some environment variables.

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2FBlockG-ws%2Faod_repo&env=code,path,client_secret,client_id,refresh_token,tenant_id)
### Docker
1. clone the repo
2. create a dockerfile in the root of the project like:
```Dockerfile
# 使用官方的 Python 基础镜像
FROM python:3.12-slim

# 设置工作目录
WORKDIR /app

# 复制项目的 requirements.txt 文件到容器中
COPY requirements.txt .

# 安装项目中的 Python 依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目的源代码到容器中
COPY . .

# 指定容器启动时执行的命令
CMD ["python", "main.py"]
```
3. create a auth.json file
4. build and run image
