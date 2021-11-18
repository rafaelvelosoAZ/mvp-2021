resource "azurerm_resource_group" "rg" {
  name     = "mvpconfrc"
  location = "eastus"
}

module "vnet-west" {
  source              = "../modules/vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "eastus"
  vnet_name           = "vnet-west-europe"
  address_space       = ["10.0.0.0/16", "192.168.0.0/24"]
  subnets = {
    subnet1 = {
      address_prefix = "10.0.0.0/24"
    }
    subnet2 = {
      address_prefix = "10.0.1.0/24"
    }
    subnet3 = {
      address_prefix = "192.168.0.0/27"
    }
    subnet4 = {
      address_prefix = "10.0.2.0/24"
    }
  }
  depends_on = [
    azurerm_resource_group.rg
  ]
}