variable "racknerd_api_key" {
  type        = string
  description = "RackNerd API key for authentication"
  sensitive   = true
}

variable "racknerd_api_hash" {
  type        = string
  description = "RackNerd API hash for authentication"
  sensitive   = true
}

variable "project_name" {
  type        = string
  description = "Name prefix used for naming cloud resources"
  default     = "your-project-name"
}

variable "racknerd_region" {
  type        = string
  description = "RackNerd region slug (e.g., ny, chi, la, tor)"
  default     = "tor"
}

variable "racknerd_plan" {
  type        = string
  description = "RackNerd plan slug (e.g., nvme-4gb)"
  default     = "nvme-4gb"
}

variable "project_ssh_public_key" {
  type        = string
  description = "Public SSH key used for provisioning"
}
