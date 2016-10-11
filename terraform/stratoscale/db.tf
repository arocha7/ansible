# DBs

variable "db_nodes" {
  description = "number of servers:"
  default = 2
}

resource "openstack_compute_instance_v2" "db" {
  count = "${var.db_nodes}"
  name = "${format("db%02d", count.index+1)}"
  image_name = "RancherOS"
  #availability_zone = ""
  flavor_id = "1"
  #key_pair = "${os_keypair}"
  security_groups = ["default"]
  network {
    name = "${var.tenant_network}"
    uuid = "${var.internal_network_id}"
  }
  user_data = "${file("bootstrapdb.sh")}"
}

