provider "boundary" {
  addr             = "http://100.24.41.171:9200/"
  recovery_kms_hcl = <<EOT
  kms "awskms" {
  purpose    = "recovery"
  region     = "us-east-1"
  key_id     = "global_recovery"
  kms_key_id = "48bfccf3-0fbc-436e-a4b5-d798203179ca"
}
EOT
}

provider "vault" {
  address    = "http://${var.vault_public_ip}:8201"
  token      = "root"
  token_name = "root"
}

module "base-config" {
source = "./boundary-config-module"
oidc_issuer        = var.oidc_issuer
oidc_client_secret = var.oidc_client_secret
oidc_client_id     = var.oidc_client_id
oidc_subject2      = var.oidc_subject2
oidc_subject1      = var.oidc_subject1
enable_oidc = var.enable_oidc
}

module "vault-cs" {
  source = "./vault-cs-module"
  project_id = module.base-config.infr_project_id
}