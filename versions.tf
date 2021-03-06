terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
    }
      vault = {
      source  = "hashicorp/vault"
    }
      tfe = {
      source  = "hashicorp/tfe"
    }
  }
    backend "remote" {
      organization = "PublicSector-ATARC"
      workspaces {
        name = "fse-tf-atarc-boundary-config"
      }
    }
  }