[Sysrepo](https://github.com/sysrepo/sysrepo)
=========

Sysrepo is a YANG-based configuration and operational state data store for Unix/Linux applications.


Requirements
------------

The following packages are installed during playbook run:

* ccache

* libredblack

* libyang

* swig


Role Variables
--------------

SYSREPO_VER: 0.7.7 (Mar 2020)


Dependencies
------------

GCC version >4.9.0


Example Playbook
----------------

An example of how to use your role: 

    - hosts: targets
      roles:
         - { role: sysrepo, SYSREPO_VER: 0.7.7 }

License
-------

BSD

Author Information
------------------

arocha@ptinovacao.pt
