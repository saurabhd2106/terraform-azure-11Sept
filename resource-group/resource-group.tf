resource "azurerm_resource_group" "rg" {
  name     = var.rg-name
  location = var.location

  tags = local.custom_tags

  

}

resource "azurerm_resource_group" "rg-count" {
  name     = var.rg-names[count.index]
  location = var.location

  tags = local.custom_tags

  count = length(var.rg-names)
  

}


resource "azurerm_resource_group" "rg-for-each" {
  
  name     = "saurabh-${each.value}"
  
  location = var.location

  tags = local.custom_tags

  for_each = toset(var.rg-names)
  

}

locals {
  
  custom_tags = {

    "env" : var.envName
    "account" : "my-org"

  }
}