# Deployment utils based on Ansible roles

List of exhisting roles:

* ```common``` - upgrade Operating System packages to the latest version, set NTP, install usefull tools
* ```fw``` - install Firewall control tool
* ```pip``` - deploy PIP (Python package manager)
* ```pgsql``` - deploy PostgreSQL server
* ```openjdk``` - deploy OpenJDK
* ```jenkins``` - deploy Jenkins CI/CD 
* ```onos``` - deploy ONOS SDN Controller
* ```osc``` - deploy Openstack Command-line client

NOTE: some secrets are offuscated by Ansible-Vault: use use 'ansible' as password
