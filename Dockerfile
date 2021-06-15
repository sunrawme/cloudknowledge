FROM centos:latest
MAINTAINER sandeeprawat25691@gmail.com
RUN  yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/pcoint.zip /var/lib/html
WORKDIR /var/www/html
RUN ls
RUN unzip pcoint.zip
RUN cp -rvf pcoint/* .
RUN rm -rf pcoint pcoint.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
