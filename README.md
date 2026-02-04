# API Proxy

基于 Nginx 的反向代理服务，将所有请求转发到目标域名。

## 功能

- 所有请求转发到目标域名，保留原始路径和查询参数
- 支持 WebSocket 连接
- 通过环境变量配置

## 环境变量

| 变量 | 说明 | 默认值 |
|------|------|--------|
| `TARGET_DOMAIN` | 目标域名（含协议） | `https://example.com` |
| `PORT` | 监听端口 | `3000` |

## 使用

```bash
# 设置环境变量并启动
TARGET_DOMAIN=https://your-new-domain.com docker-compose up -d

# 或创建 .env 文件
echo "TARGET_DOMAIN=https://your-new-domain.com" > .env
docker-compose up -d
```
