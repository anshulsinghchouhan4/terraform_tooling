
# data "terraform_remote_state" "network" {
#   backend {
#     resource_group_name  = "<your_network_resource_group_name>"
#     storage_container_name = "<your_network_state_container_name>"
#     access_key           = "<your_storage_account_access_key>"

#   }

#   vnet_id = data.terraform_remote_state.network.outputs.vnet_id
# }
