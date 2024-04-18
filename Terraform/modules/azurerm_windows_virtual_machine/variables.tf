#
variable "vm_rg" {
  type        = string
  description = "resource group name "
}
variable "vm_vnet" {
  type        = string
  description = "resource group name "
}
variable "vm_snet" {
  type        = string
  description = "resource group name "
}
variable "vm_name" {
  type = string
  description = "virtual machine name"
}
variable "vm_size" {
  type = string
  description = "virtual machine size"
}
variable "vm_admin_username" {
  type = string
  description = "admin user name"
}
variable "vm_admin_password" {
  type = string
  description = "admin password"
}
variable "vm_c_disk_size" {
  type = number
  description = "C drive size in GB"
}
