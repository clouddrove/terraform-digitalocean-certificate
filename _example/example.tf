
provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

module "custom_certificate" {
  source = "./../"
  certificate_name       = "test"
  private_key        = "./../../../clouddrove-private-key.pem"
  certificate_chain   = "./../../../clouddrove-cert.pem"
  leaf_certificate  = "./../../../clouddrove-chain.crt"
  custom_certificate = true
}


module "lets_encrypt_certificate" {
  source = "./../"
  certificate_name = "test"
  domain_names = ["clouddrove.com"]
  lets_encrypt_certificate = true
}



