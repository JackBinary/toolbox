# Use nginx alpine for a lightweight static web server
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy all HTML files to nginx html directory
COPY *.html /usr/share/nginx/html/

# Copy custom nginx configuration for optimization
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
