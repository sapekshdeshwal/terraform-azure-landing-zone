resource "azurerm_virtual_network_peering" "peerings" {
 for_each = var.peerings

  name                      = each.value.name
  resource_group_name       = each.value.resource_group_name
  virtual_network_name      = each.value.vnet_name
  remote_virtual_network_id = each.value.remote_vnet_id
  allow_virtual_network_access = true
 
}