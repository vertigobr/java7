# Base Java Image

FROM registry.vtg/vertigo/docker-base:latest

MAINTAINER Rubens Neto

WORKDIR /opt

# URL original:
# wget --no-check-certificate \
#   --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
#   http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.rpm

RUN wget http://registry.vtg/files/oracle/jdk-7u79-linux-x64.rpm -q -O /opt/jdk.rpm && \ 
    yum localinstall /opt/jdk.rpm -y && \
    rm /opt/jdk.rpm && \
    yum clean all

#ENV JAVA_HOME /usr/lib/jvm/java

#RUN echo "JAVA_HOME=/usr/lib/jvm/java" >> /etc/environment

