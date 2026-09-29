# Production-ready, multi-arch Nginx Alpine image for Raspberry Pi (ARM64) and x86_64
FROM nginx:alpine

# Clean default nginx static directory
RUN rm -rf /usr/share/nginx/html/*

# Copy website assets to nginx web root
COPY . /usr/share/nginx/html

# Replace default server block with optimized configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Document container port
EXPOSE 80

# Healthcheck for container orchestration
HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Launch nginx
CMD ["nginx", "-g", "daemon off;"]
