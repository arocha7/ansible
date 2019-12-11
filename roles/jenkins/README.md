Role Name
=========

This playbook installs Jenkins to both Ubuntu Xenial/Bionic and CentOS 7 distros
* [Installing Jenkins on Red Hat distributions](https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Red+Hat+distributions)
* 

Requirements
------------

n.a.

Role Variables
--------------

Settable variables for this role:
* defaults/main.yml
```
pop: alabs
proj: tng
```
* vars/main.yml

Any variables that are read from other roles and/or the global scope:
* group_vars/vars
* group_vars/vault (cyphered with Ansible-Vault)

Dependencies
------------

This Role automatically installs required components, namely:
* JRE (Java Runtime Environment) 
* OSC (Openstack Command-line client)

Example Playbook
----------------

```$ ansible-playbook utils/deploy/jenkins.yml [-e pop=my-site -e proj=my-tenant] --ask-vault-pass'```

NOTE: you must set '$HOME/.config/openstack/clouds.yaml' 

License
-------

n.a.

Author Information
------------------

Alberto Rocha, arocha@ptinovacao.pt
