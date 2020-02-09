Role Name
=========

A short role to deploy PIP3 to the target machine. Python3 role is installed behind the scenes ('role/meta/main.yml')

Requirements
------------

n.a.


Role Variables
--------------

n.a

Dependencies
------------

n.a.

Example Playbook
----------------

```ansible-playbook utils/deploy/pip3.yml [-i inventory -e target=pip3 -v]```


```--ignore-installed PyYAML```

```Se #4805 and #3389 for the history. Basically, pip cannot properly uninstall packages installed by "pure" distutils, because distutils doesn't record enough metadata for us to do so. We've previously removed the installation metadata, so that it looks like we did the install, but we've had to leave files behind. That causes issues. Since pip 8, we've been trying to stop doing this, because it's a cause of problems, but our initial attempt was reverted because it affected too many people at the time. With pip 10, we've finally stopped trying to uninstall distutils packages, and now we report the problem to the user as you see here.```

```Basically, if you (or some infrastructure you use) installed a package using distutils, you need to manage (and in particular) uninstall it "using distutils". Unfortunately distutils doesn't include an uninstall command, so "uninstall using distutils" means manually removing the package.```


License
-------

n.a.

Author Information
------------------

Alberto Rocha, arocha@ptinovacao.pt
