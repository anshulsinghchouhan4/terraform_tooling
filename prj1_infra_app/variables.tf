variable "environment" {
  type    = string
  default = "dev"
  validation {
    condition     = var.environment == "dev"
    error_message = "Invalid environment. Valid values are dev, stag, prod."
  }
}

variable "domain_name" {
  type    = string
  default = "prj1"
}

variable "app_name" {
  type = string
  default = "ooo"
}
variable "location" {
  type    = string
  default = "westeurope"
}

variable "resource_suffix" {
  type    = string
  default = "012"
}

variable "vnet_address_space" {
  type = string
  default = ""
}

variable "paas_subnet_address_prefix" {
  type = string
  default = ""
}

variable "app_service_subnet_address_prefix" {
  type = string
  default = ""
}