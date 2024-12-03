locals {
  resource-with-dash    = "${var.environment}-${lower(substr(var.location, 0, 2))}-${lower(substr(var.domain_name, 0, 3))}-${var.resource_suffix}"
  resource_in_lowercase = "${var.environment}${lower(substr(var.location, 0, 2))}${lower(substr(var.domain_name, 0, 3))}${var.resource_suffix}"

  tags = {
    Domain      = var.domain_name
    Environment = var.environment
  }
}