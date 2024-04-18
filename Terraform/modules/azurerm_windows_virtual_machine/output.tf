#
output "vm_adminPass" {
  value = azurerm_windows_virtual_machine.vm.admin_password
}
output "vm_adminusername" {
  value = azurerm_windows_virtual_machine.vm.admin_username
}
output "vm_id" {
  value = azurerm_windows_virtual_machine.vm.id
}