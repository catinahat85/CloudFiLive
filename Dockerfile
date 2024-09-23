# Use the official Nginx image to serve the static site
FROM nginx:1-alpine-slim

# Copy static files into the Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80 to serve the site
EXPOSE 80

# Expose port 443  to serve the site
EXPOSE 443
