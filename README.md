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

The playbook to deploy a specific service or application is at path: ```$ANSIBLE_HOME/utils/deploy/YOUR_PLAYBOOK.yml```

Here is an example on how to run a specific playbook:

```ansible-playbook utils/deploy/onos.yml -i inventory -e target=ce7onos -e distro=RedHat -v```

where:

* 'inventory' - contains all hosts and groupped hosts to manage

* 'target' - is the target machine or group of target machines

* 'distro' - is the operating system distribution, ex: "RedHat" or "Debian" like
