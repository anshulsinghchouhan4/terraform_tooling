resource "azurerm_service_plan" "this" {
  name                = format("asp-%s", var.resource_suffix_kebabcase)
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = var.app_service_plan_sku
  tags                = var.tags
}

resource "azurerm_linux_web_app" "this" {
  name                                           = format("app-%s", var.resource_suffix_kebabcase)
  resource_group_name                            = var.resource_group_name
  location                                       = azurerm_service_plan.this.location
  service_plan_id                                = azurerm_service_plan.this.id
  public_network_access_enabled                  = false
  ftp_publish_basic_authentication_enabled       = false
  webdeploy_publish_basic_authentication_enabled = false
  virtual_network_subnet_id                      = var.app_service_subnet_id
  tags                                           = var.tags

  site_config {
  }
}
