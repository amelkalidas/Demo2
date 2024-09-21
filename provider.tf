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
    subscription_id = "8d3ed687-4dc7-4a9b-903a-b9a14bde85c4"
}

provider "azurerm" {
    features {}
    alias = "provider2-westus"  
    subscription_id = "8d3ed687-4dc7-4a9b-903a-b9a14bde85c4"
}
