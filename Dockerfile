FROM nimmis/apache-php7

ENV APACHE_VERSION 2

# Apache's default folder
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_SERVERADMIN desenvolvimento@celeritech.com.br
ENV APACHE_SERVERNAME localhost
ENV APACHE_SERVERALIAS docker.localhost
ENV APACHE_DOCUMENTROOT /var/www/html


RUN apt-get update && apt-get install -y php-dev php-mbstring

WORKDIR /var/www/html

EXPOSE 80

VOLUME /var/www/html

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]