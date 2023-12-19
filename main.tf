# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# configure the microsoft Azure provider
provider "azurerm" {
  features {}

  subsubscription_id = "assxxffff"
  client_id          = "asddccdbj"
  client_secret      = "fhhjkaaj"  
  tenant_id          = "aejhwjw"
  
}

# Create a resource group
resource "azurerm_resource_group" "rg1" {
  name     = "jvr"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet1" {
  name                = "vnet1"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  address_space       = ["10.0.0.0/16"]
}