terraform {
  cloud {
    organization = "tf-eshwarboini"

    workspaces {
      name = "learn-terraform-cloud"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.2.0"
    }
  }

  required_version = "~>1.2"
}