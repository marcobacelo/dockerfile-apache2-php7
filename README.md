# Dockerfile #

This is a docker image with Ubuntu 16.04 LTS, apache2 and php7/composer

To access site contents from utside the container you should map /var/www/html

Includes composer for easy download of php libraries

## Examples ##

Plain, accessable on port 8080 docker run -d -p 8080:80 nimmis/apache-php7 with external contents in /home/nimmis/html 

```bash
docker run -d -p 8080:80 -v /home/nimmis/html:/var/www/html marcobacelo/dockerfile-apache2-php7
```

The docker container is started with the -d flag so it will run inte the background. To run commands or edit settings inside
the container run `docker exec -it <container id> /bin/bash'
