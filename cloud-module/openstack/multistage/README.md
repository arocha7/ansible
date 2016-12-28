# Deployment of a MULTISTAGE environment
This playbook follows the recommended [best pratices](http://docs.ansible.com/ansible/playbooks_best_practices.html) to organize playbook content, by the separation of inventory variables between different environments,

The structure for a static inventory file should be similar to:

* MULTI-VIM - eg: Openstack, AWS, other
** MULTI-LOCATION - eg: Aveiro/POR, Athens/GR, other
*** MULTI-FUNCTION - eg: deployment of a developer VM, deployment of a Service Platform VM or deployment of a VNF/NS


However, considering that a cloud provider is used and a cononical list of platforms should be maintained, then a [Dynamic Inventory](http://docs.ansible.com/ansible/intro_dynamic_inventory.html) will be used to pull information about your compute instances directly from the cloud provider:

* OpenStack external Inventory script ['openstack.py'](https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/openstack.py)

* AWS external Inventory script ['ec2.py'](https://raw.github.com/ansible/ansible/devel/contrib/inventory/ec2.py)

