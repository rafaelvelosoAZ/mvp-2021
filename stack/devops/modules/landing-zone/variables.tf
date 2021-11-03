variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet-name" {
  type = string
}

variable "address_prefix" {
  type = string
}

variable "vnet-name" {
  type = string
}