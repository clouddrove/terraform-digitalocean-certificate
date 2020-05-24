## Managed By : CloudDrove
##Description : This Script is used to create SSL Certificate.
## Copyright @ CloudDrove. All Right Reserved.

#Module      : Certificate
#Description : Provides a DigitalOcean Certificate resource that allows you to manage certificates.
resource "digitalocean_certificate" "custom" {
  count = var.enable_certificate && var.custom_certificate == true ? 1 : 0

  name              = var.certificate_name
  type              = "custom"
  private_key       = var.private_key != "" ? file(var.private_key) : null
  leaf_certificate  = var.leaf_certificate != "" ? file(var.leaf_certificate) : null
  certificate_chain = var.certificate_chain != "" ? file(var.certificate_chain) : null
}

#Module      : Certificate
#Description :Provides a DigitalOcean Certificate resource that allows you to manage certificates.
resource "digitalocean_certificate" "lets_encrypt" {
  count = var.enable_certificate && var.lets_encrypt_certificate == true ? 1 : 0

  name    = var.certificate_name
  type    = "lets_encrypt"
  domains = var.domain_names
}
