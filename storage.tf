resource "azurerm_storage_account" "storage" {
  name                     = "logicappstorage9876"
  resource_group_name      = azurerm_resource_group.app-33.name
  location                 = azurerm_resource_group.app-33.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "app-container" {
  name                  = "logiccontainer"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

