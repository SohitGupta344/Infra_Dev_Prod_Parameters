variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in Prod environment."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Storage Account in Prod environment."
}

variable "location" {
  type        = string
  description = "The Azure region where Prod resources will be created."
  default     = "East US"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to Prod resources."
  default     = {}
}
