terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 4.0"

    }
  }
  backend "azurerm" {
    resource_group_name = "TerraformRG"
    storage_account_name = "terraformstatelocking"
    container_name = "tfstate"
    key = "terraform.tfstate"
    
  }
}

provider "azurerm" {
    features {}
}

provider "azurerm" {
    features {}
    alias = "provider2-westus"  
}
