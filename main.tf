resource "azurerm_app_service_plan" "my-testing" {
  name                = "azure-logic-plan"
  location            = azurerm_resource_group.app-1.location
  resource_group_name = azurerm_resource_group.app-1.name
  kind                = "elastic"


  sku {
    tier = "WorkflowStandard"
    size = "WS1"
  }
}

resource "azurerm_logic_app_standard" "logic-Standard" {
  name                       = "test-azure-logic"
  location                   = azurerm_resource_group.app-1.location
  resource_group_name        = azurerm_resource_group.app-1.name
  app_service_plan_id        = azurerm_app_service_plan.my-testing.id
  storage_account_name       = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME"     = "node"
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18"
  }
}