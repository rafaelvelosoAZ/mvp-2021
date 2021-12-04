# Azure DNS Module

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.77.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_dns_a_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_a_record) | resource |
| [azurerm_dns_aaaa_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_aaaa_record) | resource |
| [azurerm_dns_cname_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_cname_record) | resource |
| [azurerm_dns_mx_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_mx_record) | resource |
| [azurerm_dns_ns_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_ns_record) | resource |
| [azurerm_dns_srv_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_srv_record) | resource |
| [azurerm_dns_txt_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_txt_record) | resource |
| [azurerm_dns_zone.zone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_a_recordsets"></a> [a\_recordsets](#input\_a\_recordsets) | List of A records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)` | `list(string)` | `[]` | no |
| <a name="input_aaaa_recordsets"></a> [aaaa\_recordsets](#input\_aaaa\_recordsets) | List of AAAA records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)` | `list(string)` | `[]` | no |
| <a name="input_cname_records"></a> [cname\_records](#input\_cname\_records) | List of CNAME records. Needed values `name`, `type`, `ttl` and `record`.`record` must be presented as `list(string)` | `list(string)` | `[]` | no |
| <a name="input_mx_recordsets"></a> [mx\_recordsets](#input\_mx\_recordsets) | List of NS records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)`. It also must follow this sequence: (i) preference/priority, (ii) exchange | `list(string)` | `[]` | no |
| <a name="input_ns_recordsets"></a> [ns\_recordsets](#input\_ns\_recordsets) | List of NS records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)` | `list(string)` | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group that contains the DNS zone where the records will be added. | `string` | n/a | yes |
| <a name="input_srv_recordsets"></a> [srv\_recordsets](#input\_srv\_recordsets) | List os SRV records. Needed values `name` `type` `ttl` and `records` | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of all tags needed by this resource | `map(any)` | `{}` | no |
| <a name="input_txt_recordsets"></a> [txt\_recordsets](#input\_txt\_recordsets) | List of AAAA records. Needed values `name`, `type`, `ttl` and `record`. `record` must be presented as `list(string)` | `list(string)` | `[]` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | List of DNS zones to manage, in the standard terraformdns structure. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | DNS Zone Resource ID |
| <a name="output_zone_name"></a> [zone\_name](#output\_zone\_name) | DNS Zone name |
