Include CRUD (Create, Read/manage, Upgrade, Destroy) CLI functionality to SP SON-NFV Operations - experimental version (PoC)

## SP playbook structure

The available type of Operations are (OPS_TYPE):
* INSTAL - contains the playbooks to deploy a SP from the scratch
* MANAGE - contains the playbooks to manage the global SP lyfe-cycle and its individual componentes
* UPDATE - contains the playbooks to update the SP to a desired state
* REMOVE - contains the playbooks to uninstall a SP or its individual components

The available type of Infrastructure are (ENV_TYPE):
* Integration Infrastructure (SP4II)
* Qualification Infrastructure (SP4QI)
* Demonstration Infrastructure (SP4DI)

The available type of Services are (SVC_ID):
* GK: gtk-srv, gtk-api, gtk-bss, gtk-gui (gtk-all)
* REPOs: son-catalog
* MANO: slm, ssm, fsm, plugin-mgr (mano-all)
* IFT-A: ifta-vim, ifta-wim (ifta-all)
* MON: mon-srv, mon-mgr, mon-pushgw (mon-all)
* LOG: log-srv, log-elk, log-graylog (log-all)
* ALL: apply to all the previous Services

The available actions are (obvious):
* start, stop, restart, status

## SP CLI

### INSTALL SP ALL
$ ansible-playbook son-nfv.yml -e "targets=localhost ops=OPS_TYPE env=INFRA_TYPE svc=ALL|SVC_ID" -vvvv

### MANAGE SP ALL
$ ansible-playbook son-nfv.yml -e "targets=localhost ops=OPS_TYPE env=INFRA_TYPE svc=ALL|SVC_ID action=status,stop,start,restart" -vvvv

### UPGRADE SP ALL
$ ansible-playbook son-nfv.yml -e "targets=localhost ops=OPS_TYPE env=INFRA_TYPE svc=ALL|SVC_ID"

### REMOVE SP ALL
$ ansible-playbook son-nfv.yml -e "targets=localhost ops=OPS_TYPE env=INFRA_TYPE svc=ALL|SVC_ID"


## Report feedback to:
'Alberto Rocha', arocha@ptinovacao.pt
