FROM centos:lastest
MAINTAINER 25691
RUN  yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/ww/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markup-kindle/* .
RUN rm -rf _MACOSX markup-kindle kindle.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
