resource "azurerm_resource_group" "default" {
  name = "${var.service_name}-rg"
  location = var.location
  tags = local.tags
}