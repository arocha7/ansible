sudo yum groupinstall "Development tools" -y
sudo yum install python-devel python-sudo pip -y
sudo yum install openssl-devel
sudo yum install libffi-devel
sudo pip install munch
sudo pip install python-openstackclient
sudo pip install python-heatclient
sudo pip install python-magnumclient
sudo pip install python-neutronclient
sudo pip install python-troveclient
sudo pip install python-designateclient
sudo pip install python-ironicclient
sudo yum install wget -y
wget https://pypi.python.org/packages/cc/6a/51fdde55a5ab2bb74ab123e5b8003587bd883ee417b51e389b7986d0f545/shade-1.12.1.tar.gz#md5=7a49274c19fef9a17dda8465db6b37eb
tar zxvf shade-1-14-1.tar
cd shade-1.14.1
python setup.py install

