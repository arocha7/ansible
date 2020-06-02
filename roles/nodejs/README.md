Role Name
=========

A role to deploy 'NodeJS' and 'NPM' to the target machine


Requirements
------------

n.a.


Role Variables
--------------

nodejs_ver: 14


Dependencies
------------

n.a.


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: cgc
      roles:
         - { role: nodejs, nodejs_ver: 14 }


How to use
----------

```ansible-playbook utils/deploy/nodejs.yml -i inventory -e target=cgc -e nodejs_ver=14 -v```


License
-------

n.a.


Author Information
------------------

arocha@ptinovacao.pt
