resource "azurerm_storage_account" "storage" {
  name                     = "logicappstorage778899"
  resource_group_name      = azurerm_resource_group.app-44.name
  location                 = azurerm_resource_group.app-44.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "app-container" {
  name                  = "logiccontainer123"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

