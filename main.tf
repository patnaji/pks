
resource "azurerm_resource_group" "rg_name"{
    name = "rg_ram"
    location = "east us"
}
resource "azurerm_storage_account" "namepk" {
    name = "agra"
    resource_group_name = "rg_ram"
    location = "east us"
    account_tier = "Standard"
    account_replication_type = "LRS"
    depends_on = [ azurerm_resource_group.rg_name ]

    
}
