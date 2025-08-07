terraform {
  required_version = ">= 1.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_address" "gateway_ip" {
  name        = "YOUR_STATIC_IP_NAME"
  region      = var.region
  description = "STATIC_IP_FOR_GATEWAY"
}

resource "google_compute_instance" "gateway_vm" {
  name                       = var.instance_name
  machine_type               = var.machine_type
  zone                       = var.zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    access_config {
      nat_ip = google_compute_address.gateway_ip.address
    }
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_pub_key_path)}"
  }

  tags = ["homelab", "public-gateway"]

  labels = {
    env     = "homelab"
    project = "your-project-name"
  }
}
