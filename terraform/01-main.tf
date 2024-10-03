terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }

  backend "azurerm" {
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