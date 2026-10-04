variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in Dev environment."
}

variable "vm_name" {
  type        = string
  description = "The name of the Virtual Machine in Dev environment."
}

variable "vm_size" {
  type        = string
  description = "VM size for Dev."
  default     = "Standard_B1s"
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
