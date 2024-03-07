
resource "azurerm_subnet_network_security_group_association" "nsg_block" {
     for_each = var.nsg_association
  subnet_id                 = data.azurerm_subnet.datas[each.key].id
  network_security_group_id = data.azurerm_network_security_group.sg1[each.key].id
}
