resource "azurerm_linux_virtual_machine" "myterraformvm" {
  name                  = var.virtualMachineName
  location              = var.location
  resource_group_name   = azurerm_resource_group.myterraformgroup.name
  network_interface_ids = [azurerm_network_interface.myterraformnic.id]
  size                  = var.diskSize

  os_disk {
    name                 = "myOsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name                   = var.virtualMachineName
  admin_username                  = "azureuser"
  disable_password_authentication = true

  admin_ssh_key {
    username   = "azureuser"
    public_key = data.azurerm_ssh_public_key.ssh-key.public_key
  }

  boot_diagnostics {
    storage_account_uri = azurerm_storage_account.mystorageaccount.primary_blob_endpoint
  }

  provisioner "local-exec" {

    on_failure = continue

     command = "echo ${self.private_ip_address} >> private_ips.txt"

  }

  provisioner "remote-exec" {

    on_failure = continue

    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo service nginx start"
    ]

   connection {
    type     = "ssh"
    user     = "azureuser"
    password = file("/home/nobleprog/Downloads/fabio.pem")
    host     = self.public_ip_address
  }
    
  }

  tags = var.tags
}