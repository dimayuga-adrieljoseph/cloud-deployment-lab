FROM httpd:2.4-alpine

# Configure Apache to listen on port 8080
RUN sed -i 's/Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

# Copy the website into Apache's document directory
COPY index.html /usr/local/apache2/htdocs/index.html

# Expose the application port
EXPOSE 8080

# Start Apache in the foreground
CMD ["httpd-foreground"]
