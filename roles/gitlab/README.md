Role Name
=========

A Role to deploy on permise Gitlab.

Requirements
------------

Firewall control tool is activated during playbook run. No special requirements are needed.

Role Variables
--------------

No hostvars or group vars are set.

Dependencies
------------

If you choose to use a dedicated volume for Gitlab data (ex: '/data'), then a viable way is the creation of a symbolic link to the default Gitlab directory:

```cd /opt/var && sudo ln -s /data gitlab```


Example Playbook
----------------

```ansible-playbook utils/deploy/gitlab.yml -v```

License
-------

n.a.

Author Information
------------------

Alberto Rocha, arocha@ptinovacao.pt
