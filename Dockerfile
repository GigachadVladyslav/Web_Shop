FROM wordpress:latest

#Nginx
RUN apt-get update && apt-get install -y \
    certbot \
    python3-certbot-nginx \
    && rm -rf /var/lib/apt/lists/*


# copy Nginx
COPY ./nginx/ /etc/nginx/sites-avaible

# port 80
EXPOSE 80
EXPOSE 443

# start
CMD certbot --nginx && service nginx start && docker-entrypoint.sh php-fpm


