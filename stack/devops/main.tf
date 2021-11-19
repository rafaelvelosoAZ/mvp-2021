resource "azurerm_resource_group" "rg" {
  name     = "mvpconfrc"
  location = "eastus"
}

module "vnet-west" {
  source              = "./modules/vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "eastus"
  vnet_name           = "vnet-mvpconf"
  address_space       = ["10.0.0.0/16", "192.168.0.0/24"]
  subnets = {
    subnet1 = {
      address_prefix    = "10.0.0.0/24"
      service_endpoints = ["Microsoft.KeyVault", "Microsoft.Web"]
      delegation = {
        name = "delegation1"
        service_delegation = {
          name = "Microsoft.ApiManagement/service"
          actions = [
            "Microsoft.Network/networkinterfaces/*",
            "Microsoft.Network/virtualNetworks/subnets/action",
            "Microsoft.Network/virtualNetworks/subnets/join/action"
          ]
        }
      }
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

module "dns" {
  source              = "./modules/dns-zone"
  resource_group_name = azurerm_resource_group.rg.name
  for_each            = var.dns_settings
  zone_name           = each.key
  dns_records         = each.value.dns_records
  depends_on = [
    azurerm_resource_group.rg
  ]
}
