# Use an existing Nginx web server image as the base image
FROM nginx:latest

# Copy the index.html file to the web server document root
COPY index.html /usr/share/nginx/html/

# Copy the PHP file to a directory accessible by the web server
COPY submit.php /usr/share/nginx/html/
