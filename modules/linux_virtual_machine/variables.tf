variable "vm_name" {
  type        = string
  description = "Name of the Virtual Machine."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}

variable "location" {
  type        = string
  description = "Azure Region for the VM."
  default     = "East US"
}

variable "vm_size" {
  type        = string
  description = "VM size/SKU."
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM."
  default     = "azureuser"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM."
  default     = "P@ssw0rd1234!"
}

variable "tags" {
  type        = map(string)
  description = "Tags to assign to resources."
  default     = {}
}
