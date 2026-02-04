FROM nginx:alpine

# Copy nginx config template
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Use envsubst to replace environment variables and start nginx
CMD ["/bin/sh", "-c", "envsubst '${TARGET_DOMAIN} ${PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]
