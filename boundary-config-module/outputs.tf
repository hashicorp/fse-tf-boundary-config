# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "infr_project_id" {
  value = boundary_scope.db_infra_proj.id
}
