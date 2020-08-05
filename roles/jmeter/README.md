Role Name
=========

A playbook to install Apache Jmeter


Requirements
------------

JMeter requires a Java Runtime Environment (JRE) but this role previously installs OpenJDK 1.8 before JMeter installation.


Role Variables
--------------

By the time of this writings, a variable was defined to set JMeter version at 'defaults/main.yml'

```
jmeter_ver: 5.3
```


Dependencies
------------

Openstack command-line client (OSC) can be used if you plan to deploy JMeter to an Openstack VIM


Example Playbook
----------------

* to install JMeter to the local machine, just run:

```
ansible-playbook utils/deploy/jmeter.yml -v
```

* to install JMeter to a remote machine (after setting the inventory), just run:

```
ansible-playbook utils/deploy/jmeter.yml -v
```


License
-------

n.a.


Author Information
------------------

alberto-m-rocha@alticelabs.com
