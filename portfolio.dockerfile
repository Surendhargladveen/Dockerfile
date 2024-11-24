FROM ubuntu
LABEL Author="Surendhar"
LABEL Description="My Porfolio"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install git wget apache2 -y
CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
EXPOSE 80
WORKDIR /var/www/html
VOLUME [ "/var/logs/apache2" ]
ADD portfolio.tar.gz /var/www/html

