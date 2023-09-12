resource "azurerm_resource_group" "rg" {
  name     = "saurabh-tfstate-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {

    //Interpolation
  name                     = local.bucket_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "random_string" "random_name" {

  length  = 8
  special = false
  lower   = true
  upper = false

}

locals {
  bucket_name = "tfstateblob${random_string.random_name.result}"
}
