Kea DHCPv4 and DHCP6 Server
=========

Kea is the next generation of DHCP software developed by ISC. It supports both DHCPv4 and DHCPv6 protocols
along with their extensions, e.g. prefix delegation and dynamic updates to DNS.


Requirements
------------

.


Role Variables
--------------

.


Dependencies
------------

The following products are installed before KEA instalaltion:

* [GCC](https://gcc.gnu.org/) - because default version of GCC in CentOS 7 (4.8.5) is not supported. Actual GCC version in Ubuntu 18.04 is 7.5.0 and that is ok since minimum version for KEA is 4.9.0. As of March 2020, this playbook deploys the latest tarball version 9.3.0

* [Boost](http://www.boost.org/) - additions to the Standard C++ Library. March 2020 we are using [Boost ver. 1.72.0](https://www.boost.org/doc/libs/1_72_0/more/getting_started/unix-variants.html)

* OpenSSL (or Botan)

* make

* [MySQL client]() 

* [PostgreSQL client]() 

* [FreeRADIUS client]() 

* [YANG/NETCONF interface]() - requires [Sysrepo](https://www.sysrepo.org/) - note that building 'libyang' requires GCC version >4.9.0

** [Installing NETCONF on Ubuntu 18.04](https://gitlab.isc.org/isc-projects/kea/-/wikis/docs/ubuntu-installation-notes)

** [Installing NETCONF on CentOS 7](https://gitlab.isc.org/isc-projects/kea/-/wikis/docs/centos-installation-notes)


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
