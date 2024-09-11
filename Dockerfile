  GNU nano 6.2                                                                    Dockerfile                                                                              
# Use the official Nginx image to serve the static site
FROM nginx:alpine

# Copy static files into the Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80 to serve the site
EXPOSE 80

# Expose port 443  to serve the site
EXPOSE 443
