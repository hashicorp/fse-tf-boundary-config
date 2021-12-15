provider "boundary" {
  addr = "http://100.24.41.171:9200/"
  recovery_kms_hcl = <<EOT
  kms "awskms" {
	purpose    = "recovery"
  region     = "us-east-1"
	key_id     = "global_recovery"
  kms_key_id = "48bfccf3-0fbc-436e-a4b5-d798203179ca"
}
EOT
}