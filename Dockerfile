FROM amazonlinux
RUN yum update -y && \
    yum install httpd -y
ADD https://github.com/dj-datta/dockpractice/raw/master/spring-html /var/www/html/index.html
CMD ["httpd","-D","FOREGROUND"]
