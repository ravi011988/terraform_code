terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg_001"
    storage_account_name = "yamlstorage01"
    container_name = "yamlcontainer"
    key = "backup.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "09098ad9-99a1-43f6-9b36-7c1d79f03953"
}