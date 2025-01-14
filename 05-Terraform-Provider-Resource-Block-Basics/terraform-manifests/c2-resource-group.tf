# Resource Block
# Create a resource group
/*resource "azurerm_resource_group" "myrg" {
  name = "myrg-1"
  location = "East US"
}*/
resource "azurerm_resource_group" "my-rg" {
  name = "my-rg1"
  location = "West US 2"  
}