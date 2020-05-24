#Module      : Certificate
#Description :Provides a DigitalOcean Certificate resource that allows you to manage certificates.

output "id" {
  value       = var.custom_certificate ? join("", digitalocean_certificate.custom.*.id) : join("", digitalocean_certificate.lets_encrypt.*.id)
  description = "The unique ID of the certificate."
}

output "name" {
  value       = var.custom_certificate ? join("", digitalocean_certificate.custom.*.name) : join("", digitalocean_certificate.lets_encrypt.*.name)
  description = "The name of the certificate."
}

output "not_after" {
  value       = var.custom_certificate ? join("", digitalocean_certificate.custom.*.not_after) : join("", digitalocean_certificate.lets_encrypt.*.not_after)
  description = "The expiration date of the certificate."
}

output "sha1_fingerprint" {
  value       = var.custom_certificate ? join("", digitalocean_certificate.custom.*.sha1_fingerprint) : join("", digitalocean_certificate.lets_encrypt.*.sha1_fingerprint)
  description = "The SHA-1 fingerprint of the certificate."
}
