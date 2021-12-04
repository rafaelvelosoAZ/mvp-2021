module "rg" {
  source   = "../../modules/rg"
  rg_name  = var.rg_name
  location = var.rg_location
}

module "dns" {
  source = "../../modules/dns-zone"

  resource_group_name = module.rg.name
  for_each            = var.dns_settings
  zone_name           = each.key
  dns_records         = each.value.dns_records
  depends_on = [
    module.rg
  ]
}

module "vnet" {
  source = "../../modules/vnet"

  resource_group_name = module.rg.name
  location            = module.rg.location
  vnet_name           = var.vnet-name
  address_space       = var.vnet-address-space
  subnets             = var.subnets-vnet

  nsg_ids               = yamldecode(file(var.path-nsg-vnet-aks))
  vnet_peering_settings = yamldecode(file(var.path-peering-settings-vnet-aks))

  depends_on = [
    module.rg
  ]
}
