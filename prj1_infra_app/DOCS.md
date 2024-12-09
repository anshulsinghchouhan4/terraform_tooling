<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =4.12.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =4.12.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_app_service"></a> [app\_service](#module\_app\_service) | ./modules/app_service | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/resource_group) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/data-sources/client_config) | data source |
| [terraform_remote_state.network](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_service_plan_sku"></a> [app\_service\_plan\_sku](#input\_app\_service\_plan\_sku) | The app service plan SKU | `string` | `"B1"` | no |
| <a name="input_application"></a> [application](#input\_application) | The application name | `string` | `"hol"` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | The domain name | `string` | `"prj1"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment name | `string` | `"dev"` | no |
| <a name="input_location"></a> [location](#input\_location) | The Azure region where the resources should be created | `string` | `"westeurope"` | no |
| <a name="input_resource_group_name_suffix"></a> [resource\_group\_name\_suffix](#input\_resource\_group\_name\_suffix) | The resource group name suffix | `string` | `"00"` | no |
| <a name="input_storage_account_container_name"></a> [storage\_account\_container\_name](#input\_storage\_account\_container\_name) | The storage account container name to retreive the other states from | `string` | n/a | yes |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | The storage account name to retreive the other states from | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | The custom tags for all resources | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->