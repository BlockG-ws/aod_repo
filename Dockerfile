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
