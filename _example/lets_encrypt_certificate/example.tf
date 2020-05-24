
provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

module "lets_encrypt_certificate" {
  source                   = "./../../"
  certificate_name         = "test"
  domain_names             = ["clouddrove.com"]
  lets_encrypt_certificate = true
}



