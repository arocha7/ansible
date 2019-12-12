Role Name
=========

A role to deploy a VM to an Openstack platform. You must have a tenant account on that VIM. 


Requirements
------------

This role use Openstack Command-line client (OSC) to operate the Openstack platform, but that is installed with the playbook.

When deployed by Jenkins you have to:
* add 'jenkins' user to 'sudoers'
* include your '.pem' key at '$HOME/.ssh'


Role Variables
--------------

The following default variables are used:

* ```plat ``` - to specify the application (a simple VM, for instance) you want to deploy
* ```pop: ``` - to specify the location (PoP) where the VM will be created 
* ```proj: ``` - to specify the Tenant where the VM wil belong
* ```distro: ``` -  to specify the Linux distro as the Operating System
NOTE: to add you own VIM just create a file with the right values at 'group_vars/os_{pop}_{proj}_{distro}'


Dependencies
------------

To connect to an Openstack platform will need Shade library, but that is now solved by the 'openstacksdk' library that is installed during the deployment process.


Example Playbook
----------------

This playbook creates a Ubuntu 18.04 VM on the Altice Labs PoP on the 'tango' Tenant

```$ ansible-playbook utils/deploy/vm.yml -e plat=vm -e pop=alb -e proj=tango -e distro=bionic -v```


License
-------

n.a.


Author Information
------------------

arocha@ptinovacao.pt
