output "resource_group_name" {
  description = "The name of the Prod Resource Group."
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "The ID of the Prod Resource Group."
  value       = module.resource_group.resource_group_id
}

output "storage_account_name" {
  description = "The name of the Prod Storage Account."
  value       = module.storage_account.storage_account_name
}

output "storage_account_id" {
  description = "The ID of the Prod Storage Account."
  value       = module.storage_account.storage_account_id
}
