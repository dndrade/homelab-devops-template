output "vm_ip" {
  description = "Public IP address of the RackNerd VM"
  value       = racknerd_server.racknet_vm.ipv4_address
}
# Note: You must define a racknerd_server resource elsewhere to use this output