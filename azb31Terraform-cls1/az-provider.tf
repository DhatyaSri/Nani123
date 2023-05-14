terraform {
  required_version = "1.4.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.48.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "AZB31STATE"
    storage_account_name = "azb31tfstate"
    container_name       = "tfstate"
    key                  = "azb31class1.tfstate"
  }
}

provider "azurerm" {
  features {}
}
