// it will output "registry1.azurecr.io"
output "login_server" {
  value = azapi_resource.example.output.properties.loginServer
}

// it will output "disabled"
output "quarantine_policy" {
  value = azapi_resource.example.output.properties.policies.quarantinePolicy.status
}