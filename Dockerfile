FROM nickmaietta/alpine-nginx-php8:latest

# You need to be root to 
USER root
WORKDIR /var/www/
COPY ./composer.json /var/www/
RUN composer install

USER nobody

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]