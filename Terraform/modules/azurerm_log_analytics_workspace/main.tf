data "azurerm_resource_group" "rg" {
  name = var.resource_group
}
resource "azurerm_log_analytics_workspace" "law" {
  name                               = var.log_name
  location                           = data.azurerm_resource_group.rg.location
  resource_group_name                = data.azurerm_resource_group.rg.name
  sku                                = var.log_sku
  retention_in_days                  = var.log_retention_in_days == null ? null : var.log_retention_in_days
  daily_quota_gb                     = var.log_daily_quota_gb == null ? null : var.log_daily_quota_gb
  internet_ingestion_enabled         = var.log_internet_ingestion_enabled == null ? null : var.log_internet_ingestion_enabled
  internet_query_enabled             = var.log_internet_query_enabled == null ? null : var.log_internet_query_enabled
  reservation_capacity_in_gb_per_day = var.log_reservation_capacity_in_gb_per_day == null ? null : var.log_reservation_capacity_in_gb_per_day
}
