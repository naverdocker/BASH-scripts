!#/bin/bash

sudo apt update

if [ $? -eq 0 ]
then
	curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
	/usr/share/keyrings/jenkins-keyring.asc > /dev/null

	echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
	https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
	/etc/apt/sources.list.d/jenkins.list > /dev/null

	sudo apt update
	sudo apt install fontconfig openjdk-11-jre -y
	sudo apt install jenkins -y
	echo "jenkins is installed and available"

else 
	sudo yum update -y

	if [ $? -eq 0 ]
	then
		sudo wget -O /etc/yum.repos.d/jenkins.repo \
    		https://pkg.jenkins.io/redhat-stable/jenkins.repo
		sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
		sudo yum upgrade
		sudo amazon-linux-extras install java-openjdk11 -y
		sudo yum install jenkins -y
		sudo systemctl enable jenkins
		sudo systemctl start jenkins
		echo "jenkins is installed and available"
	else
		echo " "
		echo " this file can only install jenkins on ubuntu or debain or amazonlinux."
		echo " "
		echo " if your distro is one of ubuntu, debian or amazonlinux, then this file is most likely outdated and needs update before execution"
		echo " "
		echo " if you distro is neither ubuntu nor debian nor amazonlinux, then visit jenkins.io for info on how to install jenkins on your distro"
	fi
fi
