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
  type = any
}

variable "vnet-name" {
  type = string
}
