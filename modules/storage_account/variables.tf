variable "storage_account_name" {
  type        = string
  description = "The name of the Azure Storage Account (must be unique, 3-24 lowercase alphanumeric)."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the storage account will be created."
}

variable "location" {
  type        = string
  description = "The Azure Region for the storage account."
  default     = "East US"
}

variable "account_tier" {
  type        = string
  description = "Tier to use for this storage account (Standard or Premium)."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Replication type to use (LRS, GRS, RAGRS, ZRS)."
  default     = "LRS"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the storage account."
  default     = {}
}
