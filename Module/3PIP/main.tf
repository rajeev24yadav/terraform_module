resource "azurerm_public_ip" "pip" {
    for_each = var.public
  name                = each.value.name
  resource_group_name = each.value.rg
  location            = each.value.location
  allocation_method   = "Static"

}