terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.72.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "saurabh-tfstate-rg"
    storage_account_name = "tfstateblobt7ssna3a"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"


   
  }


}

provider "azurerm" {
  # Configuration options
  features {

  }

 

}