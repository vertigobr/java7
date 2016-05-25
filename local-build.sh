#!/bin/bash
LOCALJDK="http://192.168.1.2/files/oracle/jdk-7u79-linux-x64.rpm"
docker build \
    --build-arg "LOCALJDK=$LOCALJDK" \
    -t vertigo/java7 .
