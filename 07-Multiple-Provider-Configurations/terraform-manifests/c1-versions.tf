# Terraform Block
terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

# Provider-1 for EastUS (Default Provider)
provider "azurerm" {
  features {}
  subscription_id = "b2d547a2-4a60-467d-927f-aa6b48c894d2"
}

# Provider-2 for WestUS
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false
    }
  }
  alias = "provider2-eastus"
  subscription_id = "b2d547a2-4a60-467d-927f-aa6b48c894d2"
  #client_id = "XXXX"
  #client_secret = "YYY"
  #environment = "german"
  #subscription_id = "JJJJ"
}




# Provider Documentation for Reference
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

