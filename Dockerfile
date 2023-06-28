FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
copy . /var/www/html
CMD ["usr/sbin/apachectl","-D", "FOREGROUND"]
