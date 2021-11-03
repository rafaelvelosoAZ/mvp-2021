resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "example" {
  name                = var.vnet-name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.address_space

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
    }
  }
}
