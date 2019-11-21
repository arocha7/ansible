#!/bin/bash
sudo apt-get update
sudo apt-get install build-essential -y
sudo apt-get install python-dev python-pip -y
sudo apt-get install openssl-dev -y
sudo apt-get install libffi-dev -y
sudo pip install munch
sudo pip install monotonic
sudo pip install cryptography
sudo pip install oslo.config
sudo pip install oslo.config --upgrade
sudo pip install concurrent.futures
sudo pip install futures
sudo pip install concurrent
sudo pip install warlock

sudo pip install python-openstackclient
sudo pip install python-heatclient
sudo pip install python-magnumclient
sudo pip install python-neutronclient
sudo pip install python-troveclient
sudo pip install python-designateclient
sudo pip install python-ironicclient

sudo apt-get  install wget -y
wget https://pypi.python.org/packages/cc/6a/51fdde55a5ab2bb74ab123e5b8003587bd883ee417b51e389b7986d0f545/shade-1.12.1.tar.gz#md5=7a49274c19fef9a17dda8465db6b37eb
tar zxvf shade-1-12-1.tar
cd shade-1.12.1
sudo python setup.py install

