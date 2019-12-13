Role Name
=========

A role ito  multiple versions of PostgreSQL on top of multiple distros 

* CentOS 7 - as steps described here: https://wiki.postgresql.org/wiki/YUM_Installation
* Ubuntu 18.04 


Requirements
------------

* Requires Ansible +2.2 because of managed services with 'systemd' 


Role Variables
--------------
To install a different pgSQL version, change variable "tarball". 
To set your own dbname, username and passwd, change it at role 'vars'
Current versions are: "9.6" and "11"


Dependencies
------------
* Python module "psycopg2"

NOTE: this library is installed by this role


Playbook Usage
----------------
Example using default variables:

```
$ ansible-playbook [-i inventory] utils/deploy/pgsql.yml [-e target="INVENTORY_GROUP"] -v

$ ansible-playbook utils/deploy/pgsql.yml -e "tarball=9.6 tarball_ver=96" -v

$ ansible-playbook [-i inventory] utils/deploy/pgsql.yml -e "tarball=11 pg_ver=11" -v
```

NOTE: use 'ansible' when asked for the Ansible-Vault password


File Locations
--------------
* U18: /usr/lib/postgresql/11/bin/postgres -D /var/lib/postgresql/11/main -c config_file=/etc/postgresql/11/main/postgresql.conf
* Ce7: /usr/pgsql-11/bin/postmaster -D /var/lib/pgsql/11/data/


Manual Start
------------
* U18: 
```$ systemctl status postgresql```
* Ce7: 
```$ systemctl status postgresql-${tarball}```


Uninstall
---------
Example: 
* Uninstall from local host
```
$ ansible-playbook utils/destroy/pgsql.yml -e "tarball=9.6 pg_dev=96" -v

$ ansible-playbook utils/destroy/pgsql.yml -e "tarball=11 pg_ver=11" -v
```
* Uninstall from the target machine
```
$ ansible-playbook utils/destroy/pgsql.yml -i inventory -e "target=INVENTORY_HOST_or_GROUP tarball=9.6 pg_dev=96" -v



License
-------
n.a.


Author Information
------------------
"Alberto Rocha", arocha@ptinovacao.pt
