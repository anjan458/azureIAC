data "azurerm_resource_group" "rg" {
  name = var.resource_group
}
module "loga" {
  source = ""
}
resource "azurerm_application_insights" "app_insights" {
  name                                  = var.application_insights_name
  location                              = data.azurerm_resource_group.rg.location
  resource_group_name                   = data.azurerm_resource_group.rg.name
  application_type                      = var.application_insights_application_type
  daily_data_cap_in_gb                  = var.application_insights_daily_data_cap_in_gb == null ? null : var.application_insights_daily_data_cap_in_gb                                   #optional
  daily_data_cap_notifications_disabled = var.application_insights_daily_data_cap_notifications_disabled == null ? null : var.application_insights_daily_data_cap_notifications_disabled #optional
  retention_in_days                     = var.application_insights_retention_in_days == null ? null : var.application_insights_retention_in_days                                         #optional
  sampling_percentage                   = var.application_insights_sampling_percentage == null ? null : var.application_insights_sampling_percentage                                     #optional
  disable_ip_masking                    = var.application_insights_disable_ip_masking == null ? null : var.application_insights_disable_ip_masking                                       #optional
  workspace_id                          = module.loga.lgw_id                                                                                                                                       #optional
  local_authentication_disabled         = var.application_insights_local_authentication_disabled == null ? null : var.application_insights_local_authentication_disabled                 #optional
  internet_ingestion_enabled            = var.application_insights_internet_ingestion_enabled == null ? null : var.application_insights_internet_ingestion_enabled                       #optional
  internet_query_enabled                = var.application_insights_internet_query_enabled == null ? null : var.application_insights_internet_query_enabled                               #optional
  force_customer_storage_for_profiler   = var.application_insights_force_customer_storage_for_profiler == null ? null : var.application_insights_force_customer_storage_for_profiler     #(Optional) Should the Application Insights component force users to create their own storage account for profiling? Defaults to false
}
