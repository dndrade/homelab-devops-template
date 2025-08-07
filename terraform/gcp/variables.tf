variable "project_id" {
  description = "Your GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
  default     = "your-vm-name"
}

variable "machine_type" {
  description = "Instance type"
  type        = string
  default     = "e2-micro"
}

variable "ssh_pub_key_path" {
  description = "Path to your SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_user" {
  description = "Username used for SSH access"
  type        = string
  default     = "your-ssh-user"
}
