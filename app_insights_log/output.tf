output "instrumentation_key" {
  value = [ for ik in azurerm_application_insights.app_insights : ik.instrumentation_key]
  sensitive = true
}
output "app_id" {
  value = [ for apid in azurerm_application_insights.app_insights : apid.app_id ]
}
output "lgw_id" {
  value = [ for lag in azurerm_log_analytics_workspace.law : lag.workspace_id ]
}