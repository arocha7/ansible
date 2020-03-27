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

The following products are installed by the playbook before KEA instalaltion:

* [GCC](https://gcc.gnu.org/) - because default version of GCC in CentOS 7 (4.8.5) is not supported. Actual GCC version in Ubuntu 18.04 is 7.5.0 and that is ok since minimum version for KEA is 4.9.0. As of March 2020, this playbook deploys the latest tarball version 9.3.0

* [Boost](http://www.boost.org/) - additions to the Standard C++ Library. March 2020 we are using [Boost ver. 1.72.0](https://www.boost.org/doc/libs/1_72_0/more/getting_started/unix-variants.html)

* OpenSSL (or Botan)


Optional tools
--------------

* [MySQL client]() 

* [PostgreSQL client]() 

* [FreeRADIUS client]() 

* [YANG/NETCONF interface]() - requires [Sysrepo](https://www.sysrepo.org/) - note that building 'libyang' requires GCC version >4.9.0

** [Installing NETCONF on Ubuntu 18.04](https://gitlab.isc.org/isc-projects/kea/-/wikis/docs/ubuntu-installation-notes)

** [Installing NETCONF on CentOS 7](https://gitlab.isc.org/isc-projects/kea/-/wikis/docs/centos-installation-notes)


Example Playbook
----------------

To deploy Kea with all available options, just run:

```
ansible-playbook utils/deploy/kea.yml
```

To deploy Kea with selected options, just run (ex,):

```
ansible-playbook utils/deploy/kea.yml \
  -e gcc=true \
  -e boost=true \
  -e openssl=true \
  -e botan=false \
  -e mysql_cli=false \
  -e pgsql_cli=true \
  -e freeradius_cli=true \
  -e libyang=true
```


License
-------

BSD

Author Information
------------------

arocha@ptinovacao.pt
