resource "azurerm_network_interface" "nic" {
    for_each = var.meest_nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = data.azurerm_subnet.datas[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.publicip[each.key].id
  }
}

