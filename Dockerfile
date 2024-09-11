# Use an official NGINX image from DockerHub as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Install git and bash
RUN apk add --no-cache git bash

# Retry cloning up to 5 times in case of failure
RUN for i in $(seq 1 5); do git clone --depth 1 https://github.com/catinahat85/CloudFiLive.git /usr/share/nginx/html && break || sleep 5; done

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
