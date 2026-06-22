data "azurerm_subnet" "bastion_subnet" {
  name                 = var.bastion.subnet_name
  virtual_network_name = var.bastion.vnet_name
  resource_group_name  = var.bastion.resource_group_name
  
}

resource "azurerm_public_ip" "bastion_pip" {
  name                = var.bastion.public_ip_name
  location            = var.bastion.location
  resource_group_name = var.bastion.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "bastion" {
  name                = var.bastion.bastion_name
  location            = var.bastion.location
  resource_group_name = var.bastion.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.bastion_subnet.id
    public_ip_address_id = azurerm_public_ip.bastion_pip.id
  }
}