variable "vault_public_ip" {
    description = "public ip address of the vault server"
}

variable "vault_port" {
  description = "connection api port on the vault server"
}

variable "psql_password" {
  type = string
}

variable "psql_user" {
  type = string
}
variable "oidc_subject1" {
  
}

variable "oidc_subject2" {
  
}

variable "oidc_client_id" {
  
}

variable "oidc_client_secret" {
  
}

variable "oidc_issuer" {
  
}

variable "enable_oidc" {
default = false
}

variable "vault_unseal" {
}

variable "vault_token" {
}