provider "boundary" {
  addr             = "http://${data.tfe_outputs.infra.values.controller_public_ip}:9200/"
  recovery_kms_hcl = <<EOT
  kms "awskms" {
  purpose    = "recovery"
  region     = "${var.region}"
  key_id     = "global_recovery"
  kms_key_id = "${data.tfe_outputs.infra.values.kms_recovery_key_id}"
}
EOT
}

provider "vault" {
  address    = "http://${data.tfe_outputs.vault.values.vault_public_ip}:${var.vault_port}"
  token      = var.vault_token
}

provider "tfe" {
  token    = var.tfc_token
}

data "tfe_outputs" "infra" {
  workspace         = "fse-tf-atarc-boundary-infra"
  organization = "PublicSector-ATARC"
}

data "tfe_outputs" "vault" {
  workspace         = "fse-tf-atarc-vault"
  organization = "PublicSector-ATARC"
}

module "base-config" {
source = "./boundary-config-module"
#oidc_issuer        = var.oidc_issuer
#oidc_client_secret = var.oidc_client_secret
#oidc_client_id     = var.oidc_client_id
#oidc_subject2      = var.oidc_subject2
#oidc_subject1      = var.oidc_subject1
enable_oidc = var.enable_oidc
vault_private_ip = data.tfe_outputs.vault.values.vault_private_ip
}

module "vault-cs" {
 source = "./vault-cs-module"
 project_id = module.base-config.infr_project_id
 vault_host = data.tfe_outputs.vault.values.vault_private_ip
 vault_port = var.vault_port
 psql_host = data.tfe_outputs.infra.values.controller_private_ip
 psql_pw = var.psql_pw
 psql_user = var.psql_user
 root_db = "postgres"
 depends_on = [module.base-config]
}