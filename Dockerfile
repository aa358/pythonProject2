FROM centos:centos7
RUN yum install httpd -y
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN chown -R apache:apache /var/www/html/
COPY $PWD/Website /var/www/html
COPY $PWD/httpd.conf  /etc/httpd/conf.d/httpd.conf
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]