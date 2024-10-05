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
  default_tags = {}
  tags = merge(
    local.default_tags,
    var.tags
  )
}
