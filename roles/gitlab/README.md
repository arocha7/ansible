Role Name
=========

A Role to deploy Gitla on premise

Requirements
------------

No special requirements are needed

Firewall control tool is activated during playbook run


Role Variables
--------------

No hostvars or group vars are set.

Dependencies
------------

n.a.


Example Playbook
----------------

```ansible-playbook utils/deploy/gitlab.yml [ -i inventory -e target=gitlab -v]```

NOTE: if you are deploying to a remote machine, set the 'target' variable with the remote IP address or add an entry alias in the Inventory file 


Post-deployment verification
----------------------------

'gitlab' service starts automatically. 

```$ sudo gitlab-ctl status```

Runtime platform                                    arch=amd64 os=linux pid=13680 revision=ac8e767a version=12.6.0
gitlab-ctl: Service is running!

```$ sudo gitlab-ctl list```

Runtime platform                                    arch=amd64 os=linux pid=13694 revision=ac8e767a version=12.6.0
Listing configured ctls                          ConfigFile=/etc/gitlab-ctl/config.toml


License
-------

n.a.

Author Information
------------------

Alberto Rocha, arocha@ptinovacao.pt
