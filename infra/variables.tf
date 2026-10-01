variable "hcloud_token" {
  description = "Hetzner Cloud API token (never committed, passed via TF_VAR_hcloud_token or terraform.tfvars)"
  type        = string
  sensitive   = true
}

variable "server_type" {
  description = "Hetzner server type (cheapest available shared-vCPU plan)"
  type        = string
  default     = "cx22"
}

variable "location" {
  description = "Hetzner datacenter location"
  type        = string
  default     = "nbg1" # Nuremberg, Germany — typically cheapest region
}

variable "ssh_public_key_path" {
  description = "Path to local SSH public key used for server access"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}
