FROM nginx:alpine

# Copy static website resources to the Nginx document root
COPY html/ /usr/share/nginx/html/

# Copy custom Nginx configuration to support clean URLs
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose HTTP port
EXPOSE 80
