resource "azurerm_storage_account" "sto" {
  name                     = "st${local.resource_in_lowercase}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.tags
}

resource "azurerm_storage_container" "this" {
  name                  = "states"
  storage_account_id    = azurerm_storage_account.sto  
  container_access_type = "private"
}
