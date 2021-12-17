variable "vault_public_ip" {
    description = "public ip address of the vault server"
}

variable "vault_port" {
  default = 8201
  description = "connection api port on the vault server"
}

variable "controller_ip" {
}

variable "psql_pw" {
  type = string
}

variable "psql_user" {
  type = string
}
variable "oidc_subject1" {
default = 0
}

variable "oidc_subject2" {
default = 0
}

variable "oidc_client_id" {
default = 0
}

variable "oidc_client_secret" {
default = 0
}

variable "oidc_issuer" {
default = 0
}

variable "enable_oidc" {
default = false
}

variable "vault_unseal" {
}

variable "vault_token" {
}

variable "tfc_token" {
}
