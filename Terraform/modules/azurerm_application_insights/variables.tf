variable "resource_group" {
  type        = string
  description = "Resource group name"
}
variable "application_insights_name" {
  type        = string
  description = "application_insights_name"
}
variable "application_insights_application_type" {
  type        = string
  description = "application_insights_application_type"
}
variable "application_insights_daily_data_cap_in_gb" {
  type        = optional(string)
  description = "application_insights_daily_data_cap_in_gb"
}
variable "application_insights_daily_data_cap_notifications_disabled" {
  type        = optional(string)
  description = "application_insights_daily_data_cap_notifications_disabled"
}
variable "application_insights_retention_in_days" {
  type        = optional(string)
  description = "application_insights_retention_in_days"
}
variable "application_insights_sampling_percentage" {
  type        = optional(string)
  description = "application_insights_sampling_percentage"
}
variable "application_insights_disable_ip_masking" {
  type        = optional(string)
  description = "application_insights_disable_ip_masking"
}
variable "application_insights_workspace_id" {
  type        = optional(string)
  description = "application_insights_workspace_id"
}
variable "application_insights_local_authentication_disabled" {
  type        = optional(string)
  description = "application_insights_local_authentication_disabled"
}
variable "application_insights_internet_ingestion_enabled" {
  type        = optional(string)
  description = "application_insights_internet_ingestion_enabled"
}
variable "application_insights_internet_query_enabled" {
  type        = optional(string)
  description = "application_insights_internet_query_enabled"
}
variable "application_insights_force_customer_storage_for_profiler" {
  type        = optional(bool)
  description = "application_insights_force_customer_storage_for_profiler"
}

