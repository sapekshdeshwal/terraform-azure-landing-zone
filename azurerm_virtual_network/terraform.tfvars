vnets = {
  "dev" = {
    name = "dev-vnet"
    resource_group_name = "dev-rg"
    location = "centralindia"
    address_space = ["10.0.0.0/16"]
  }

  "prod" = {
    name = "prod-vnet"
    resource_group_name = "prod-rg"
    location = "centralindia"
    address_space = ["10.1.0.0/16"]
}
}