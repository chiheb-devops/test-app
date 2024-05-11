
# Use Nginx as a lightweight HTTP server
FROM docker.io/nginx:alpine

# Copy HTML and CSS files to the Nginx default public directory
COPY ./web /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 8080

# Command to run the web server
CMD ["nginx", "-g", "daemon off;"]
