
provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

module "custom_certificate" {
  source             = "./../../"
  certificate_name   = "test"
  private_key        = "~/.ssh/id_rsa.pub"
  leaf_certificate   = "/etc/ssl/apache-selfsigned.crt"
  custom_certificate = true
}
