resource "azapi_resource" "example" {
  type      = "Microsoft.ContainerRegistry/registries@2020-11-01-preview"
  name      = "st-${local.resource_suffix_lowercase}"
  parent_id = azurerm_resource_group.example.id
  location = azurerm_resource_group.example.location

  body = {
    sku = {
      name = "Standard"
    }
    properties = {
      adminUserEnabled  = true
      minimumTLSVersion = "TLS1_2"
    }
  }
  tags = local.tags
}