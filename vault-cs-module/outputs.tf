# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "boundary_vault_token" {
    value = vault_token.boundary
}