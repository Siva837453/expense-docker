#!/bin/bash
#check wheather root user or not
#install docker after create instance
R="\e[31m"
N="\e[0m"
# first install pckages and docker reposioty
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl start docker
systemctl enable docker
#add user afyer adding user you can login and log out
usermod -aG docker ec2-user
echo -e "$R Logout and Login again $N"