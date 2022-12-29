#!/bin/bash

sudo apt update 2>/dev/null

if [ $? -eq 0 ]
then
sudo apt install fontconfig openjdk-11-jre -y
fi

sudo yum update -y 2>/dev/null

if [ $? -eq 0 ]
then
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11 -y
fi

wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz
tar -zxvf ./apache-tomcat-9.0.70.tar.gz
mv ./apache-tomcat-9.0.70 /opt/apache-tomcat
/opt/apache-tomcat/bin/startup.sh || /opt/apache-tomcat/bin/catalina.sh

echo "<h1>Welcome to APACHE_TOMCAT V9.0.70</h1>" > /opt/apache-tomcat/webapps/ROOT/index.html

rm -rf ./apache-tomcat*
