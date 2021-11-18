variable "resource_group_name" {
  type        = string
  description = "The name of the resource group that contains the DNS zone where the records will be added."
}

variable "zone_name" {
  type        = string
  description = "List of DNS zones to manage, in the standard terraformdns structure."
}

variable "cname_records" {
  type        = any
  description = "List of CNAME records. Needed values `name`, `type`, `ttl` and `record`.`record` must be presented as `list(string)`"
  default     = {}
}

variable "ns_recordsets" {
  type        = any
  description = "List of NS records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)`"
  default     = {}
}

variable "mx_recordsets" {
  type        = list(string)
  description = "List of NS records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)`. It also must follow this sequence: (i) preference/priority, (ii) exchange"
  default     = []
}

variable "a_recordsets" {
  type        = any
  description = "List of A records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)`"
  default     = {}
}

variable "aaaa_recordsets" {
  type        = list(string)
  description = "List of AAAA records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)`"
  default     = []
}

variable "txt_recordsets" {
  type        = list(string)
  description = "List of AAAA records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)`"
  default     = []
}

variable "srv_recordsets" {
  type        = list(string)
  default     = []
  description = "List os SRV records. Needed values `name` `type` `ttl` and `records`"
}

variable "tags" {
  type        = map(any)
  description = "List of all tags needed by this resource"
  default     = {}
}

# variable "record_sets" {
#   type = any
# }
variable "dns_records" {
  type = any
}
