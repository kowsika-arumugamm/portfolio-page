# Use the official Nginx image
FROM nginx:latest

# Remove the default Nginx web page
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio page to the Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web access
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
