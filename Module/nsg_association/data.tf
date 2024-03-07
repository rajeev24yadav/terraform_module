data "azurerm_subnet" "datas" {
    for_each = var.nsg_association
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.rg
}

data "azurerm_network_security_group" "sg1" {
  for_each = var.nsg_association
  name                = each.value.nsg
  resource_group_name = each.value.rg
}