locals {
  resource_lowercase_array  = [lower(var.environment), substr(lower(var.location), 0, 2), lower(var.domain), substr(lower(var.application), 0, 3), var.resource_group_name_suffix]
  resource_suffix_kebabcase = join("-", local.resource_lowercase_array)
  resource_suffix_lowercase = join("", local.resource_lowercase_array)

  app_service_subnet_id = data.terraform_remote_state.network.outputs.app_service_subnet_id
  paas_subnet_id        = data.terraform_remote_state.network.outputs.paas_subnet_id

  tags = merge(
    var.tags,
    tomap(
      {
        "Environment" = var.environment,
        "Domain"      = var.domain
      }
    )
  )
}

