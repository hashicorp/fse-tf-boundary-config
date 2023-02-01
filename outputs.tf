# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


output "vault_token" {
  value = var.vault_token
  sensitive = true
}

output "boundary_vault_token" {
  value = module.vault-cs.boundary_vault_token
  sensitive = true
}