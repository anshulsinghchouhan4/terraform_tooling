resource "azurerm_subnet" "paas_subnet" {
  name                 = "paas"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.paas_subnet_address_prefix]
}

resource "azurerm_subnet" "app_service_subnet" {
  name                 = "app-service"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.app_service_subnet_address_prefix]
  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}

