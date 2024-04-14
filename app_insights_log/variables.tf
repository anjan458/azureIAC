variable "resource_group" {
  type        = string
  description = "Resource group name"
  default = "rg-02"
}
variable "application_insights" {
  description = "application_insights details"
  type = map(object({
    name                                  = string
    application_type                      = string
    daily_data_cap_in_gb                  = optional(string)
    daily_data_cap_notifications_disabled = optional(string)
    retention_in_days                     = optional(string)
    sampling_percentage                   = optional(string)
    disable_ip_masking                    = optional(string)
    workspace_id                          = optional(string)
    local_authentication_disabled         = optional(string)
    internet_ingestion_enabled            = optional(string)
    internet_query_enabled                = optional(string)
    force_customer_storage_for_profiler   = optional(bool)#(Optional) Should the Application Insights component force users to create their own storage account for profiling? Defaults to false 
  }))
  default = {
    "one" = {
      name = "name01"
      application_type = "web"
    }
  }
}
variable "log_analytics_workspace" {
  description = "log_analytics_workspace variables"
  type = map(object({
    name                               = string
    sku                                = string
    retention_in_days                  = optional(number)
    daily_quota_gb                     = optional(string)
    internet_ingestion_enabled         = optional(bool)
    internet_query_enabled             = optional(bool)
    reservation_capacity_in_gb_per_day = optional(string) #The capacity reservation level in GB for this workspace. Possible values are 100, 200, 300, 400, 500, 1000, 2000 and 5000.
  }))
  default = {
    "one" = {
      name = "value02"
      sku = "PerGB2018"
    }
  }
}