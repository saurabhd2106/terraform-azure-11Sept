output "rg-id" {

    value = azurerm_resource_group.rg.id

    sensitive = true

}

output "location" {
    value = azurerm_resource_group.rg.location
}