variable "vms" {
  type = map(object({
    vm_name                = string
    nic_name               = string
    resource_group_name   = string
    location              = string
    size                  = string
    subnet_name           = string
    vnet_name             = string
  }))
  
}