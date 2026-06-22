variable "peerings" {
  type = map(object({
    name                = string
    resource_group_name = string
    vnet_name           = string
    remote_vnet_id      = string
  }))
}