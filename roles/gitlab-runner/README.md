Role Name
=========

A Role to deploy on permise Gitlab.

Requirements
------------

No special requirements are needed.

Firewall control tool is activated during playbook run.


Role Variables
--------------

No hostvars or group vars are set.

Dependencies
------------

As a best pratice, you should previously create and mount a dedicated Volume for Gitlab, keeping the VM as small as possible.
If you choose to use a dedicated volume (ex: '/data'), then a viable way is the creation of a symbolic link to the default Gitlab directory:

```cd /opt/var && sudo ln -s /data gitlab```


Example Playbook
----------------

```ansible-playbook utils/deploy/gitlab.yml [ -i inventory -e target=gitlab -v]```


Post-deployment verification
----------------------------

'gitlab-runner' service starts automatically. 

```$ sudo gitlab-runner status```

Runtime platform                                    arch=amd64 os=linux pid=13680 revision=ac8e767a version=12.6.0
gitlab-runner: Service is running!

```$ sudo gitlab-runner list```

Runtime platform                                    arch=amd64 os=linux pid=13694 revision=ac8e767a version=12.6.0
Listing configured runners                          ConfigFile=/etc/gitlab-runner/config.toml


License
-------

n.a.

Author Information
------------------

Alberto Rocha, arocha@ptinovacao.pt
