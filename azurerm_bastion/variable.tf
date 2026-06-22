variable "bastion" {
  type = object({
    resource_group_name = string
    location            = string
    vnet_name           = string
    subnet_name          = string
    public_ip_name      = string
    bastion_name         = string
  })
  
}