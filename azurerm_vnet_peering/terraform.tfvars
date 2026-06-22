peerings = {
  dev-to-prod = {
    name = "dev-to-prod"
    resource_group_name = "dev-rg"
    vnet_name = "dev-vnet"
    remote_vnet_id = "/subscriptions/Your-Subscription-ID/resourceGroups/prod-rg/providers/Microsoft.Network/virtualNetworks/prod-vnet"
  }

  prod-to-dev = {
    name = "prod-to-dev"
    resource_group_name = "prod-rg"
    vnet_name = "prod-vnet"
    remote_vnet_id = "/subscriptions/Your-Subscription-ID/resourceGroups/dev-rg/providers/Microsoft.Network/virtualNetworks/dev-vnet"

  } 
}