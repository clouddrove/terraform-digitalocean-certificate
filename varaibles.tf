#Module      : Certificate
#Description :Provides a DigitalOcean Certificate resource that allows you to manage certificates.
variable "enable_certificate" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable certificate."
}

variable "custom_certificate" {
  type        = bool
  default     = false
  description = "A boolean flag to enable/disable custom_certificate."
}

variable "lets_encrypt_certificate" {
  type        = bool
  default     = false
  description = "A boolean flag to enable/disable lets_encrypt_certificate."
}

variable "certificate_name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `~/.ssh/id_rsa.pub` or `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQ`)."

}

variable "private_key" {
  type        = string
  default     = ""
  description = "Path of private key."
}

variable "domain_names" {
  type        = list
  default     = []
  description = "Path of private key."
}

variable "leaf_certificate" {
  type        = string
  default     = "~"
  description = "Path of certificate body."
}

variable "certificate_chain" {
  type        = string
  default     = ""
  description = "Path of certificate chain."
}

