
output "vault_token" {
  value = var.vault_token
  sensitive = false
}

output "boundary_vault_token" {
  value = module.vault-cs.boundary_vault_token
}