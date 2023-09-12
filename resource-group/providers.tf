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


    client_id     = "eace8cba-1ab4-4b4f-a6ff-b084b288df1b"
    client_secret = "Zb98Q~790uXp6hc-HcQP1gRMCOtUdZRnvgQumat7"

    tenant_id       = "fa1e26bd-a406-4570-a09c-e0f3083223c6"
    subscription_id = "e0b47bea-67c1-44d3-a3ae-a494d59ab222"
  }


}

provider "azurerm" {
  # Configuration options
  features {

  }

  client_id     = "eace8cba-1ab4-4b4f-a6ff-b084b288df1b"
  client_secret = "Zb98Q~790uXp6hc-HcQP1gRMCOtUdZRnvgQumat7"

  tenant_id       = "fa1e26bd-a406-4570-a09c-e0f3083223c6"
  subscription_id = "e0b47bea-67c1-44d3-a3ae-a494d59ab222"

}