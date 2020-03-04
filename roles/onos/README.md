Role Name
=========

A role to deploy ONOS to the target machine(s)


Requirements
------------

n.a.


Role Variables
--------------

For the time being, the following variables are set:

* ONOS_VERSION=2.3.0 - change it in 'roles/onos/vars/main.yml' 

* ONOS_APPS: drivers,openflow,segmentrouting,fpm,dhcprelay,netcfghostprovider,routeradvertisement,gui2 - change it in 'roles/onos/defaults/main.yml'


Dependencies
------------

ONOS requires JDK that is installed by this deployment.


Example Playbook
----------------

To deploy to the local machine:

```ansible-playbook utils/deploy/onos.yml -v```


Verification
------------

```
$ systemctl status onos -l

● onos.service - Open Network Operating System
   Loaded: loaded (/etc/systemd/system/onos.service; enabled; vendor preset: disabled)
   Active: active (running) since Wed 2020-03-04 08:29:02 UTC; 56s ago
  Process: 29395 ExecStart=/etc/init.d/onos start (code=exited, status=0/SUCCESS)
 Main PID: 29557 (karaf)
   CGroup: /system.slice/onos.service
           ├─29557 /bin/sh /opt/onos/apache-karaf-4.2.6/bin/karaf server server server
           └─29683 /bin/java -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -Dkaraf.log.console=INFO -Dds.lock.timeout.milliseconds=10000 -Djava.endorsed.dirs=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.242.b08-0.el7_7.x86_64/jre/jre/lib/endorsed:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.242.b08-0.el7_7.x86_64/jre/lib/endorsed:/opt/onos/apache-karaf-4.2.6/lib/endorsed -Djava.ext.dirs=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.242.b08-0.el7_7.x86_64/jre/jre/lib/ext:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.242.b08-0.el7_7.x86_64/jre/lib/ext:/opt/onos/apache-karaf-4.2.6/lib/ext -Dkaraf.instances=/opt/onos/apache-karaf-4.2.6/instances -Dkaraf.home=/opt/onos/apache-karaf-4.2.6 -Dkaraf.base=/opt/onos/apache-karaf-4.2.6 -Dkaraf.data=/opt/onos/apache-karaf-4.2.6/data -Dkaraf.etc=/opt/onos/apache-karaf-4.2.6/etc -Dkaraf.log=/opt/onos/apache-karaf-4.2.6/data/log -Dkaraf.restart.jvm.supported=true -Djava.io.tmpdir=/opt/onos/apache-karaf-4.2.6/data/tmp -Djava.util.logging.config.file=/opt/onos/apache-karaf-4.2.6/etc/java.util.logging.properties -Dkaraf.startLocalConsole=false -Dkaraf.startRemoteShell=true -classpath /opt/onos/apache-karaf-4.2.6/lib/boot/org.apache.karaf.diagnostic.boot-4.2.6.jar:/opt/onos/apache-karaf-4.2.6/lib/boot/org.apache.karaf.jaas.boot-4.2.6.jar:/opt/onos/apache-karaf-4.2.6/lib/boot/org.apache.karaf.main-4.2.6.jar:/opt/onos/apache-karaf-4.2.6/lib/boot/org.apache.karaf.specs.activator-4.2.6.jar:/opt/onos/apache-karaf-4.2.6/lib/boot/org.osgi.core-6.0.0.jar org.apache.karaf.main.Main

Mar 04 08:28:58 ce7baseline systemd[1]: Starting Open Network Operating System...
Mar 04 08:28:58 ce7baseline sudo[29405]:     root : TTY=unknown ; PWD=/ ; USER=root ; COMMAND=/opt/onos/karaf/bin/status
Mar 04 08:29:01 ce7baseline onos[29395]: /opt/onos/apache-karaf-4.2.6/data/port shutdown port file doesn't exist. The container is not running.
Mar 04 08:29:02 ce7baseline onos[29395]: Starting ONOS
Mar 04 08:29:02 ce7baseline runuser[29555]: pam_unix(runuser:session): session opened for user root by (uid=0)
Mar 04 08:29:02 ce7baseline systemd[1]: Started Open Network Operating System.
Mar 04 08:29:02 ce7baseline onos[29395]: [  OK  ]


$ /opt/onos/karaf/bin/status

Running ...
```

To access the ONOS CLI:

```
$ /opt/onos/bin/onos -l [karaf | onos]
Password authentication
Password:
Welcome to Open Network Operating System (ONOS)!
     ____  _  ______  ____
    / __ \/ |/ / __ \/ __/
   / /_/ /    / /_/ /\ \
   \____/_/|_/\____/___/

Documentation: wiki.onosproject.org
Tutorials:     tutorials.onosproject.org
Mailing lists: lists.onosproject.org

Come help out! Find out how at: contribute.onosproject.org

Hit '<tab>' for a list of available commands
and '[cmd] --help' for help on a specific command.
Hit '<ctrl-d>' or type 'logout' to exit ONOS session.

karaf@root > feature:list
onos@root > feature:list

``` 

To check the ONOS web gui:

```curl http://172.31.8.196:8181/onos/v1/devices --user onos:rocks```


License
-------

BSD

Author Information
------------------

Alberto Rocha, arocha@ptinovacao.pt
