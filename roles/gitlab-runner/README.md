Role Name
=========

A Role to deploy a Gitlab Runner to the target machine.

Requirements
------------

No special requirements are needed. Anyway, you must provide the Gitlab server URL and a Token for a specific project (change defaults at 'vars')

Firewall control tool is activated during playbook run.


Role Variables
--------------

No hostvars or group vars are set.

The following Vars are set as default:

# service placement options: 'onperm' vs. 'extern'
placement: onperm
# projects options: 'vbng', 'volt', others
project: vbng
# on premise Gitlab server
onprem_gitlab_srv: gitlab-ci.ptin.corppt.com
extern_gitlab_srv: gitlab.com/alb2020
# vOLT
volt_registration_token: _PEV_-sGieLtWPQk9F56
# vBNG
vbng_registration_token: x8sxdKsdhGxfpEcEKVQL


Dependencies
------------

n.a.


Example Playbook
----------------

To deploy a specific Runner for a Project (assuming the default values at 'vars/main.yml'):

```ansible-playbook utils/deploy/gitlab-runner.yml [ -i inventory -e target=runner -v]```

To deploy a specific Runner for a Project (overloading the default variables):

```ansible-playbook utils/deploy/gitlab-runner.yml [ -i inventory -e target=runner -e placement=onperm -e project=vbng vbng_registration_token=x8sxdKsdhGxfpEcEKVQL -v]```


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
