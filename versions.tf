terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = "1.0.5"
    }
  }
    backend "remote" {
      organization = "PublicSector-ATARC"
      workspaces {
        name = "fse-tf-atarc-boundary-config"
      }
    }
  }