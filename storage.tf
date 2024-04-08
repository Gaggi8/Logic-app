resource "azurerm_storage_account" "storage" {
  name                     = "logicappstorage"
  resource_group_name      = azurerm_resource_group.app-1.name
  location                 = azurerm_resource_group.app-1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "app-container" {
  name                  = "logiccontainer"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

