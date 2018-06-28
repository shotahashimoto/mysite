FROM centos:6.9
MAINTAINER shota.takayama

# yum
RUN yum -y update
RUN yum -y clean all
RUN yum -y install gcc
RUN yum -y install git
RUN yum -y install vim
RUN yum -y install httpd
RUN yum -y install mysql mysql-devel mysql-server mysql-utilities
RUN yum -y install perl-CPAN.x86_64
RUN cpan App::cpanminus
RUN cpanm CGI

# port
EXPOSE 80
CMD ["/sbin/init"]
