resource "azurerm_virtual_network" "main" {
  name                = "net-${var.resource_suffix}"
  location            = var.location
  address_space       = [var.vnet_address_space]
  resource_group_name = azurerm_resource_group.rg.name

  tags = local.tags
}