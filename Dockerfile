FROM ubuntu 
RUN apt update 
RUN apt install –y apache2 -y
ADD . /var/www/html 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
