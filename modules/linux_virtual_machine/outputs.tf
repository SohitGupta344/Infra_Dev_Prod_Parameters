output "vm_id" {
  description = "The ID of the Virtual Machine."
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the Virtual Machine."
  value       = azurerm_linux_virtual_machine.vm.name
}

output "public_ip_address" {
  description = "The Public IP address of the Virtual Machine."
  value       = azurerm_public_ip.pip.ip_address
}
