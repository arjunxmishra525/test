terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
}

provider "azurerm" {
features {}
}

resource "azurerm_resource_group" "RG1" {
for_each=var.RG
name=each.key
loation=each.value
}
