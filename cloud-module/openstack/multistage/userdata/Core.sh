#!/bin/bash
sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-{{ epel_tarball }}.noarch.rpm
sudo yum update 
sudo yum install ansible -y
sudo yum install git -y
sudo yum install python-pip python-setuptools python-wheel -y
sudo yum install htop nmap tree sysstat -y
