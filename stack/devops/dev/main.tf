module "development" {
  source = "../modules/landing-zone"

  vnet-name           = "mvp-vnet"
  resource_group_name = "mvpconf"
  location            = "westeurope"
  address_space       = ["10.0.0.0/16"]
  address_prefix      = "10.0.1.0/24"
  subnet-name         = "front-end"
}

module "development-dynamic" {
  source = "../modules/lading-dynamic"

  vnet-name           = "mvp-vnet-dynamic"
  resource_group_name = "mvpconf-dynamic"
  location            = "westeurope"
  address_space       = ["192.168.0.0/16"]

  subnets = [
    {
      name           = "snet01"
      address_prefix = "192.168.1.0/24"
    },
    {
      name           = "snet02"
      address_prefix = "192.168.2.0/24"
    },
    {
      name           = "snet03"
      address_prefix = "192.168.3.0/24"
    },
    {
      name           = "snet04"
      address_prefix = "192.168.4.0/24"
    }
  ]

}

