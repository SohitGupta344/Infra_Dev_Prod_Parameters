variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in Dev environment."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Storage Account in Dev environment."
}

variable "location" {
  type        = string
  description = "The Azure region where Dev resources will be created."
  default     = "East US"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to Dev resources."
  default     = {}
}
