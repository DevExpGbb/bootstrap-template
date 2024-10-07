terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }

  backend "azurerm" {
    use_azuread_auth = true
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features { 
  }
}

locals {
  default_tags = {
    "owner" = var.gh_username
    "service" = var.service_name
  }
  tags = merge(
    local.default_tags,
    var.tags
  )
  service_name = lower("${var.gh_username}-${var.service_name}")
  service_name_safe = replace(local.service_name, "-", "")
  service_name_short = substr(local.service_name_safe, 0, 24)
}
