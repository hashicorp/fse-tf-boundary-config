output "infr_project_id" {
  value = boundary_scope.core_infra_proj.id
}

output "tf_token" {
  value = var.vault_token
}
