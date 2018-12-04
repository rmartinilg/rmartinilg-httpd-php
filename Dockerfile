FROM centos
RUN yum -y update && yum clean all && \
yum -y install httpd && \
yum -y install net-tools && yum clean all
RUN yum install -y php56w php56w-opcache php56w-mysql php56w-        iconv php56w-mbstring php56w-curl php56w-openssl php56w-token        izer php56w-soap php56w-ctype php56w-zip php56w-gd php56w-sim        plexml php56w-spl php56w-pcre php56w-dom php56w-xml php56w-in        tl php56w-json php56w-ldap php56w-pecl-apcu php56w-odbc php56        w-pear php56w-xmlrpc php56w-snmp php56w-pdo curl
RUN yum -y install php
RUN systemctl enable httpd
EXPOSE 80
CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]
