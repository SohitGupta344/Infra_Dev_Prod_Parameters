output "resource_group_name" {
  description = "The name of the Dev Resource Group."
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "The ID of the Dev Resource Group."
  value       = module.resource_group.resource_group_id
}
