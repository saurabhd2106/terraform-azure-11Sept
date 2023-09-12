resource "azurerm_resource_group" "rg" {
  name     = var.rg-name
  location = var.location

  tags = local.custom_tags

}

locals {
  
  custom_tags = {

    "env" : var.envName
    "account" : "my-org"

  }
}