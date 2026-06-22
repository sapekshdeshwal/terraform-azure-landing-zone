resource "azurerm_network_security_group" "nsgs" {
  for_each = var.nsgs

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
}