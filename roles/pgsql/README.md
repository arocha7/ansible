Role Name
=========

'pgsql' role installs multiple versions of PostgreSQL on top of multiple distros 

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
Previous install 
* Python module "psycopg2"


Playbook Usage
----------------
Example using default variables:
```
$ ansible-playbook utils/deploy/pgsql.yml -v

$ ansible-playbook utils/deploy/pgsql.yml -e "tarball_url=9.6 tarball_ver=96 pg_ver=9.6-3" -v
```


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
```
$ ansible-playbook utils/destroy/pgsql.yml -e "tarball=9.6 pg_dev=96" -v

$ ansible-playbook utils/destroy/pgsql.yml -e "tarball_ver=11 pg_ver=11" -v
```


License
-------
n.a.


Author Information
------------------
"Alberto Rocha", arocha@ptinovacao.pt
