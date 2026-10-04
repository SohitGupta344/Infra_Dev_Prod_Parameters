resource_group_name = "rg-prod-app"
vm_name             = "vm-prod-app"
vm_size             = "Standard_D2s_v3"
location            = "East US"
tags = {
  Environment = "prod"
  Project     = "Infra-Automation"
  ManagedBy   = "Terraform"
}
