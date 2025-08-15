terraform {
    required_providers {
        azurerm ={
            source = "hashicorp/azurerm"
            version = "4.39.0"
        }
    }
    
  backend "azurerm" {
    resource_group_name  = "rg_agra"
    storage_account_name = "agracity"  # <- use module output
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
    
provider "azurerm" {
    features {}
    subscription_id ="5fbead97-423e-4814-809c-114db991d911"
}
