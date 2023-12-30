terraform {
  cloud {
    organization = "tf-eshwarboini"

    workspaces {
      name = "tf-projects-modules"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.2.0"
    }
  }
}