# Use an official NGINX image from DockerHub as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Install git and any other necessary packages
RUN apk add --no-cache git bash

# Clone only the latest version of the repository using depth=1 for efficiency
RUN git clone --depth 1 https://github.com/catinahat85/CloudFiLive.git /usr/share/nginx/html

# Expose port 80 (Kubernetes will handle port 443 via Ingress)
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
