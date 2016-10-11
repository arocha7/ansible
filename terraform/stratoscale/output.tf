output "inv" {
  value = ["${openstack_compute_instance_v2.fe.*.access_ip_v4}"]
}
