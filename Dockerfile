# Use an official NGINX runtime as a parent image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the contents of the 'Profile' directory to the working directory in the container
COPY Profile/ .

# NGINX configuration (if needed)
# COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to allow external access
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
