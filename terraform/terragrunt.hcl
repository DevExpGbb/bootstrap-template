remote_state {
  backend = "azurerm"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    use_azuread_auth = true
    resource_group_name  = get_env("TF_VAR_BACKEND_STORAGE_RESOURCE_GROUP_NAME")
    storage_account_name = get_env("TF_VAR_BACKEND_STORAGE_ACCOUNT_NAME")
    container_name       = get_env("TF_VAR_BACKEND_STORAGE_CONTAINER_NAME")
    key                  = "${get_env("TF_VAR_service_name")}.tfstate"
  }
}
