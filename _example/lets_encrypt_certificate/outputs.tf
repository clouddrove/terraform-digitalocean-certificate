output "id" {
  value       = module.lets_encrypt_certificate.*.id
  description = "The unique ID of the certificate."
}
