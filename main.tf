resource "azurerm_resource_group" "westusrg" {
    name = "westus-rg"
    provider = azurerm.provider2-westus
    location = "WestUs"  
}

resource "azurerm_resource_group" "eastusrg" {
    name = "Eastus-rg"
    provider = azurerm.provider2-westus
    location = "EastUs"  
}

resource "azurerm_resource_group" "tfRG" {
    name = "terraformuserRG"
    provider = azurerm.provider2-westus
    location = "EastUs"  
    
}
resource "azurerm_resource_group" "eastusrg2" {
    name = "EastusRG2"
    provider = azurerm.provider2-westus
    location = "EastUs"  
}

resource "azurerm_storage_account" "westus-sg" {
    account_tier = "Standard"
    account_replication_type = "LRS"
    name = "westusstorgage2009"
    location = azurerm_resource_group.westusrg.location
    resource_group_name = azurerm_resource_group.westusrg.name 
  
}