provider "racknerd" {
  api_key = var.racknerd_api_key
}

resource "null_resource" "provision_racknerd_vm" {
  provisioner "local-exec" {
    command = <<EOT
      curl -X POST "https://api.racknerd.com/v1/create_vm" \
        -H "Content-Type: application/json" \
        -H "X-API-KEY: ${var.racknerd_api_key}" \
        -H "X-API-HASH: ${var.racknerd_api_hash}" \
        -d '{
          "region": "${var.racknerd_region}",
          "plan": "${var.racknerd_plan}",
          "os": "ubuntu-22.04",
          "ssh_key": "${var.project_ssh_public_key}",
          "hostname": "${var.project_name}-cloud"
        }'
    EOT
  }
}
