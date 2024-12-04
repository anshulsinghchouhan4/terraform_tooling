resource "azurerm_app_service_plan" "example" {
  name                = "prj1-${var.app_name}-asp-${local.resource-with-dash}"
  location             = var.location
  resource_group_name  = azurerm_resource_group.rg.name
  sku {
    tier = "Basic"
    size = "B1"
  }
  tags = local.tags
}

resource "azurerm_app_service" "example" {
  name                  = formatstring("prj1-${var.app_name}-app-${local.kebab_case_suffix}")
  location             = var.location
  resource_group_name  = azurerm_resource_group.example.name
  app_service_plan_id   = azurerm_app_service_plan.example.id 
  tags = local.tags
}
