output "ssh_user" {
  value = var.ssh_user
}

output "vm_name" {
  value = google_compute_instance.gateway_vm.name
}

output "vm_public_ip" {
  value = google_compute_instance.gateway_vm.network_interface[0].access_config[0].nat_ip
}

output "tags" {
  value = google_compute_instance.gateway_vm.tags
}
