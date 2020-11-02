#!/bin/bash
V_NUMBER=BUILD_N1UMBER
CURRENT_VER=$(cat /usr/local/tomcat/webapps/helloworld-ws/index.html | grep ver | awk -F "ver:" {'print $2'} | awk -F "<" {'print $1'} | sed '/^$/d')
if [ "$CURRENT_VER" -eq "$V_NUMBER" ]; then
  exit 0
else
  exit 1
fi
