variable "resource_group" {
  type        = string
  description = "Resource group name"
  default     = "rg-02"
}
variable "log_name" {
  type        = string
  description = "log_analytics_workspace name"
}
variable "log_sku" {
  type        = string
  description = "log_analytics_workspace sku"
}
variable "log_retention_in_days" {
  type        = optional(string)
  description = "log_analytics_workspace retention_in_days"
}
variable "log_daily_quota_gb" {
  type        = optional(string)
  description = "log_analytics_workspace daily_quota_gb"
}
variable "log_internet_ingestion_enabled" {
  type        = optional(string)
  description = "log_analytics_workspace internet_ingestion_enabled"
}
variable "log_internet_query_enabled" {
  type        = optional(string)
  description = "log_analytics_workspace internet_query_enabled"
}
variable "log_reservation_capacity_in_gb_per_day" {
  type        = optional(string)
  description = "log_analytics_workspace reservation_capacity_in_gb_per_day"
}

