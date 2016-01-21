#!/bin/bash
echo "downloading JDK..."
CODE=$(curl -I http://registry.vtg/files/oracle/jdk-7u79-linux-x64.rpm 2>/dev/null | head -n 1 | cut -d$' ' -f2)
if [ "$CODE" == "200" ]; then
    wget http://registry.vtg/files/oracle/jdk-7u79-linux-x64.rpm -q -O /opt/jdk.rpm
else
    wget --no-check-certificate \
       --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
       http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.rpm -q -O /opt/jdk.rpm
fi