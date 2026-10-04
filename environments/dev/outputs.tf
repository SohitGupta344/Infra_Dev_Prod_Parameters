output "resource_group_name" {
  description = "The name of the Dev Resource Group."
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "The ID of the Dev Resource Group."
  value       = module.resource_group.resource_group_id
}

output "vm_name" {
  description = "The name of the Dev VM."
  value       = module.virtual_machine.vm_name
}

output "public_ip_address" {
  description = "The Public IP of the Dev VM."
  value       = module.virtual_machine.public_ip_address
}
