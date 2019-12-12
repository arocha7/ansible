Role Name
=========

A role to install NTP and synchronize the target machine with an official clock

Requirements
------------

n.a.

Role Variables
--------------

* defaults/main.yml
``` Timezone: Etc/UTC```
``` ntp_servers: n.pool.ntp.org iburst```


Dependencies
------------

n.a.

Example Playbook
----------------

```$ ansible-playbook utils/deploy/ntp.yml -v```

License
-------

n.a.

Author Information
------------------

arocha@ptinovacao.pt
