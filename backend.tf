terraform {
  backend "azurerm" {
    resource_group_name  = "app-testing-rgrg"
    storage_account_name = "logicappstorage9876"
    container_name       = "logiccontainer"
    key                  = "logic.terraform.tfstate"
  }
}
