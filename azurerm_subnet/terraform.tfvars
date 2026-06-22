subnets = {
  "dev" = {
    name                 = "dev-subnet"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

  "prod" = {
    name                 = "prod-subnet"
    resource_group_name  = "prod-rg"
    virtual_network_name = "prod-vnet"
    address_prefixes     = ["10.1.1.0/24"]
}
}