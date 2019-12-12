#!/bin/bash
sed -i -e 's/Defaults    requiretty/Defaults   !requiretty/g' /etc/sudoers
yum update -y
yum install git nmap tree sysstat -y
yum upgrade -y

