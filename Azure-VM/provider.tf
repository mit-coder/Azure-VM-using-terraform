terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90.0" # ya koi tested stable version
    }
  }
  backend "azurerm" {
    resource_group_name  = "mith-rg"
    storage_account_name = "mitstorage123"
   container_name       = "terrform-tfstate-container"
   key                  = "demo-terraform.tfstate"


   }
}




provider "azurerm" {
  features {}
  subscription_id = "e2b21bd3-23b3-43c2-a854-a8c3e3fad269"
  # Configuration options
}


