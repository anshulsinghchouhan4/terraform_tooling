locals {
  application_name = "training"
  letters          = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
  nodes = {
    count = 3
    size  = "Standard_D2s_v3"
  }
}

variable "domain" {
  type = string
}

output "application_name" {
  value = substr(local.application_name, 0, 3)
}

output "letters" {
  value = join("-", local.letters)
}

output "Domain" {
  value = lower(var.domain)
}

output "count" {
  value = local.nodes.count
}

output "size" {
  value = local.nodes.size
}

output "resource_group" {
  value = "rg-${local.application_name}-${var.domain}"
}