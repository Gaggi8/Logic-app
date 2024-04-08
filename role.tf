resource "azurerm_role_assignment" "amogh-cont" {
  scope                = azurerm_logic_app_standard.logic-Standard.id
  role_definition_name = "Contributor"
  principal_id         = "amogh@eshapppa49outlook.onmicrosoft.com"

}