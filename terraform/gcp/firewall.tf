resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags = ["public-gateway"]
  direction   = "INGRESS"
  priority    = 1000

  source_ranges = ["0.0.0.0/0"]
  description   = "Allow SSH access"
}

resource "google_compute_firewall" "allow-http-https" {
  name    = "allow-http-https"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  target_tags = ["public-gateway"]
  direction   = "INGRESS"
  priority    = 1000

  source_ranges = ["0.0.0.0/0"]
  description   = "Allow HTTP and HTTPS traffic"
}

resource "google_compute_firewall" "allow-headscale-udp" {
  name    = "allow-headscale-udp"
  network = "default"

  allow {
    protocol = "udp"
    ports    = ["51820"]
  }

  target_tags = ["public-gateway"]
  direction   = "INGRESS"
  priority    = 1000

  source_ranges = ["0.0.0.0/0"]
  description   = "Allow Headscale/WireGuard UDP traffic"
}
