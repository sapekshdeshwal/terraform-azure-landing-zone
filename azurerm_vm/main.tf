data "azurerm_subnet" "subnet" {
  for_each            = var.vms
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.resource_group_name
  
}

resource "azurerm_network_interface" "nic" {
  for_each            = var.vms
  name                 = each.value.nic_name
  location             = each.value.location
  resource_group_name  = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  for_each            = var.vms
  name                 = each.value.vm_name
    resource_group_name  = each.value.resource_group_name
    location             = each.value.location
    size                 = each.value.size

    admin_username       = "adminuser"

    network_interface_ids = [
      azurerm_network_interface.nic[each.key].id
    ]

admin_ssh_key {
      username   = "adminuser"
      public_key = file("C:/Users/desak/.ssh/id_rsa.pub")
    }

    os_disk {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference {
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest"
    }
  }
