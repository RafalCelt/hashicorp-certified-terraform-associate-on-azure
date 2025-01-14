# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "b2d547a2-4a60-467d-927f-aa6b48c894d2"
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "westus2"
  name = "terraform-udemy"  
}
