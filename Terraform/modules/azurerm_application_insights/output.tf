output "instrumentation_key" {
  value = azurerm_application_insights.app_insights.instrumentation_key
  sensitive = true
}
output "app_id" {
  value = azurerm_application_insights.app_insights.id
}