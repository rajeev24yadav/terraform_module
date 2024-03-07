resource "azurerm_virtual_network" "Vnet_meest" {
  for_each            = var.meest
  name                = each.value.name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.rg

}
resource "azurerm_subnet" "subnets" {
  depends_on           = [azurerm_virtual_network.Vnet_meest]
  for_each             = var.subnets
  name                 = each.value.name
  resource_group_name  = each.value.rg
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}