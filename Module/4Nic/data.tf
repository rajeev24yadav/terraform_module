data "azurerm_subnet" "datas" {
    for_each = var.meest_nic
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.rg
}

data "azurerm_public_ip" "publicip" {
    for_each = var.meest_nic
  name                = each.value.publicip
  resource_group_name = each.value.rg
}
