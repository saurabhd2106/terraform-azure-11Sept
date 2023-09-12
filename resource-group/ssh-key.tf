data "azurerm_ssh_public_key" "saurabh-ssh-key" {

  name = "fabio"

  resource_group_name = "fabio-rg"
}

output "ssh_public_key" {

  value = data.azurerm_ssh_public_key.saurabh-ssh-key.public_key

}