resource "boundary_target" "vault_ssh" {
  type                     = "tcp"
  name                     = "vault_ssh"
  description              = "vault server SSH target"
  scope_id                 = boundary_scope.db_infra_proj.id
  session_connection_limit = -1
  default_port             = 22
  host_set_ids = [
    boundary_host_set.vault_servers.id
  ]
}

resource "boundary_target" "vault_ui" {
  type                     = "tcp"
  name                     = "vault appplication front end"
  description              = "hashicorp vault cluster"
  #worker_filter            = "\"/region\" == \"/${var.region}\""
  scope_id                 = boundary_scope.db_infra_proj.id
  session_connection_limit = -1
  default_port             = 8002
  host_set_ids = [
    boundary_host_set.vault_servers.id
  ]
}

resource "boundary_target" "postgres_db" {
  type                     = "tcp"
  name                     = "postgres_db"
  description              = "postgres database"
  #worker_filter            = "\"/region\" == \"/${var.region}\""
  scope_id                 = boundary_scope.db_infra_proj.id
  session_connection_limit = -1
  default_port             = 5432
  host_set_ids = [
    boundary_host_set.database_servers.id
  ]
}
