resource "azurerm_resource_group" "rg" {
  name     = "rg-${local.resource-with-dash}"
  location = var.location
  tags     = local.tags
}