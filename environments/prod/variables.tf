variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in Prod environment."
}

variable "vm_name" {
  type        = string
  description = "The name of the Virtual Machine in Prod environment."
}

variable "vm_size" {
  type        = string
  description = "VM size for Prod."
  default     = "Standard_D2s_v3"
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
