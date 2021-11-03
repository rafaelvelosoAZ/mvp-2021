variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
}

variable "vnet-name" {
  type = string
}
