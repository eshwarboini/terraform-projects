provider "azurerm" {
  features {}

  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
  subscription_id = var.ARM_SUBSCRIPTION_ID
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "myTFvnet"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
}