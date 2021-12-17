variable "project_id" {
  description = "project id to deploy hosts and targets"
}

variable "psql_port" {
  default     = 5432
  description = "port the vault and boundary servers will use to connect to the psql server"
}

variable "psql_user" {
  description = "service account for vault to connect to the psql server"
}

variable "psql_pw" {
  description = "service account password for vault to connect to the psql server"
}
variable "psql_host" {
  description = "ip or hostname of the psql server"
}

variable "root_db" {
  description = "the master db of the psql server for the vault connection"
}

variable "vault_host" {
description = "ip or hostname of the vault server"
}

variable "vault_port" {
 default = 8201
 description = "the configured port to connect to the vault server"
}