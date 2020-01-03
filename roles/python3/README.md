Role Name
=========

A role to deploy Python 3 to the target machine.

Python 3 is not installed by default in CentOS 7. Python 3 is not available in the official package repository of CentOS 7 as well.



Requirements
------------

Note that Ansible Control Center requires Ansible 2.5 and above to work with Python 3.

Role Variables
--------------

Default Python version (at that time):

```py3ver: "3.8.1"```

Note: Change it for latest version.

Dependencies
------------


Example Playbook
----------------

```ansible-playbook utils/deploy/python3.yml [-i inventory -e target=python3 -v]```

License
-------

n.a.

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
