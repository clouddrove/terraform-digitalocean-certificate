
provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

module "custom_certificate" {
  source             = "./../../"
  certificate_name   = "test"
  private_key        = "./../../../_ssl/private-key.pem"
  leaf_certificate   = "./../../../_ssl/star.crt"
  custom_certificate = true
}
