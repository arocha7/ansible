# Frontends

variable "fe_nodes" {
  description = "number of servers:"
  default = 2
}

resource "openstack_compute_instance_v2" "fe" {
  count = "${var.fe_nodes}"
  name = "${format("fe%02d", count.index+1)}"
  image_name = "RancherOS"
  #availability_zone = ""
  flavor_id = "1"
  #key_pair = "${os_keypair}"
  security_groups = ["default"]
  network {
    name = "${var.tenant_network}"
    uuid = "${var.internal_network_id}"
  }
  user_data = "${file("bootstrapweb.sh")}"
}

