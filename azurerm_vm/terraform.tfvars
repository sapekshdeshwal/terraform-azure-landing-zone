vms = {
  "dev" = {
    vm_name = "dev-vm"
    nic_name = "dev-nic"
    resource_group_name = "dev-rg"
    location = "centralindia"
    subnet_name = "dev-subnet"
    vnet_name = "dev-vnet"
    size = "Standard_B2ats_v2"
  }

  "prod" = {
    vm_name = "prod-vm"
    nic_name = "prod-nic"
    resource_group_name = "prod-rg"
    location = "centralindia"
    subnet_name = "prod-subnet"
    vnet_name = "prod-vnet"
    size = "Standard_B2ats_v2"
  }
}