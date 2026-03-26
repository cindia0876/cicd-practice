# 使用 AWS public ECR 的 Python base image
FROM public.ecr.aws/docker/library/python:3.12-slim

WORKDIR /app

# 複製專案內容到 container
COPY . /app

# 安裝必要套件
RUN pip install --no-cache-dir -r requirements.txt

# 預設啟動命令（依專案調整）
CMD ["python", "app.py"]