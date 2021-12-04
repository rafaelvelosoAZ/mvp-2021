module "rg"{
    source              = "../../modules/rg"
    rg_name = "dev-app-gybr"
    tags = {
    "key" = "value"
  } 
    
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

  vnet_name     = "vnet-mvpconf"
  address_space = ["10.0.0.0/16", "192.168.0.0/16"]
  subnets = {
    subnet1 = {
      address_prefix = "10.0.0.0/24"
    }
    subnet2 = {
      address_prefix = "192.168.0.0/24"
    }
  }

  depends_on = [
    module.rg
  ]
}
