provider "azurerm" {
  features {}
}

provider "aws" {
  region = var.aws_region
}

module "azure-dep" {
  source = "./Azure"

  ARM_CLIENT_ID       = var.ARM_CLIENT_ID
  ARM_CLIENT_SECRET   = var.ARM_CLIENT_SECRET
  ARM_TENANT_ID       = var.ARM_TENANT_ID
  ARM_SUBSCRIPTION_ID = var.ARM_SUBSCRIPTION_ID
}