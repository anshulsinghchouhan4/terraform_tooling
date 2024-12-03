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
  default = "state"
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "resource_suffix" {
  type    = string
  default = "012"
}