#!/bin/bash
yum update -y
yum install -y epel-release
yum install -y ansible
yum install -y htop
yum erase -y epel-release

# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-rhel-centos-or-fedora
