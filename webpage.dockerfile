FROM ubuntu
LABEL Author="Surendhar"
LABEL Description="Hosting web in apache webserver"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y
RUN apt install git wget unzip apache2 -y
CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
EXPOSE 80
WORKDIR /var/www/html
VOLUME [ "/var/logs/apache2" ]
ADD web01.tar.gz /var/www/html












# FROM is used to run the base Os or runtime env like python,node.js,GO
# LABEL is used to give description,name and info about image
# RUN is used to execute the command to install software
# EXPOSE is used to set the port number
# ADD is used to copy and extract the files from source to destination
# WORKDIR is used to set the directory


