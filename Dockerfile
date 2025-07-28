# Living Research Intelligence System
# Multi-stage build for optimized production container

FROM nginx:alpine as base

# Install basic utilities
RUN apk add --no-cache \
    curl \
    ca-certificates

# Create app directory
WORKDIR /usr/share/nginx/html

# Copy the HTML file
COPY index.html .

# Create nginx configuration for SPA
RUN echo 'server { \
    listen 80; \
    server_name localhost; \
    root /usr/share/nginx/html; \
    index index.html; \
    \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
    \
    # Enable gzip compression \
    gzip on; \
    gzip_vary on; \
    gzip_min_length 1024; \
    gzip_types text/plain text/css text/xml text/javascript application/javascript application/xml+rss application/json; \
    \
    # Security headers \
    add_header X-Frame-Options "SAMEORIGIN" always; \
    add_header X-Content-Type-Options "nosniff" always; \
    add_header X-XSS-Protection "1; mode=block" always; \
    add_header Referrer-Policy "no-referrer-when-downgrade" always; \
    add_header Content-Security-Policy "default-src '\''self'\'' http: https: data: blob: '\''unsafe-inline'\''" always; \
}' > /etc/nginx/conf.d/default.conf

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

# Expose port
EXPOSE 80

# Labels for metadata
LABEL org.opencontainers.image.title="Living Research Intelligence System"
LABEL org.opencontainers.image.description="A distributed multi-agent research intelligence network"
LABEL org.opencontainers.image.version="1.0.0"
LABEL org.opencontainers.image.source="https://github.com/PublikPrinciple/living-research-intelligence"

# Start nginx
CMD ["nginx", "-g", "daemon off;"]