#!/bin/bash
echo "JDK DOWNLOAD"
CODE=""
if [ "$LOCALJDK" != "" ]; then
    CODE=$(curl -I $LOCALJDK 2>/dev/null | head -n 1 | cut -d$' ' -f2)
fi
if [ "$LOCALJDK" != "" ] && [ "$CODE" == "200" ]; then
    echo "downloading JDK from $LOCALJDK..."
    wget "$LOCALJDK" -q -O /opt/jdk.rpm
else
    echo "downloading JDK from Oracle site..."
    wget --no-check-certificate \
       --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
       http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.rpm -q -O /opt/jdk.rpm
fi
echo "...JDK downloaded!"