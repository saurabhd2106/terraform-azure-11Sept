data "azurerm_ssh_public_key" "ssh-key" {

  name = "fabio"

  resource_group_name = "fabio-rg"

}