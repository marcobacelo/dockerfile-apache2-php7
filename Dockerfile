FROM nimmis/apache-php7

RUN apt-get update && apt-get install -y php-dev php-mbstring

WORKDIR /var/www/html

EXPOSE 80

VOLUME /var/www/html

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]