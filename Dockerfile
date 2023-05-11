# 使用 Node 14 作为基础镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json 到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制整个项目到工作目录
COPY . .

# 构建 Vue 项目
RUN npm run build

# 设置环境变量
ENV NODE_ENV=production

# 暴露容器端口（根据需要进行修改）
EXPOSE 9528

# 启动命令（根据需要进行修改）
CMD ["npm", "run", "dev"]
