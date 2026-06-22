bastion = {
  resource_group_name = "dev-rg"
  location = "centralindia"

  vnet_name = "dev-vnet"
  subnet_name = "AzureBastionSubnet"

  public_ip_name = "dev-bastion-pip"
  bastion_name = "dev-bastion"
}