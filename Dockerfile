# 使用官方的n8n镜像作为基础
FROM n8nio/n8n:latest

# 设置工作目录
WORKDIR /data

# 复制workflow文件到容器中
COPY ./workflows/ /home/node/.n8n/workflows/

# 设置环境变量
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# 暴露端口
EXPOSE 5678

# 启动n8n
CMD ["n8n", "start"]