# Use an official NGINX image as the base image
FROM nginx:alpine

# Set working directory for the static site
WORKDIR /usr/share/nginx/html

# Install git to clone the repository
RUN apk add --no-cache git

# Clone the static site from your GitHub repository
RUN git clone https://github.com/catinahat85/CloudFiLive.git /usr/share/nginx/html

# Expose port 80 for HTTP (SSL is handled at the Kubernetes ingress level)
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
