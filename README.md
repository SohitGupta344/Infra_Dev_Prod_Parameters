# Terraform Multi-Environment Infrastructure with Reusable Resource Group Module & Azure DevOps Pipeline

## Project Structure

```
Infra_Dev_Prod_Parameters/
├── environments/
│   ├── dev/
│   │   ├── main.tf              # Calls resource_group child module for Dev
│   │   ├── provider.tf          # Azurerm provider & backend config
│   │   ├── terraform.tfvars     # Dev specific input values (rg-dev-app)
│   │   ├── variables.tf         # Dev variable definitions
│   │   └── outputs.tf           # Outputs from Dev deployment
│   └── prod/
│       ├── main.tf              # Calls resource_group child module for Prod
│       ├── provider.tf          # Azurerm provider & backend config
│       ├── terraform.tfvars     # Prod specific input values (rg-prod-app)
│       ├── variables.tf         # Prod variable definitions
│       └── outputs.tf           # Outputs from Prod deployment
├── modules/
│   └── resource_group/
│       ├── main.tf              # azurerm_resource_group resource definition
│       ├── variables.tf         # Module inputs (name, location, tags)
│       └── outputs.tf           # Module outputs (id, name, location)
├── pipelines/
│   ├── parameterized.yml        # Multi-environment parameterized pipeline
│   ├── dev.yml                  # Standalone Dev pipeline
│   └── prod.yml                 # Standalone Prod pipeline with approval gate
├── .gitignore
└── README.md
```

## Parameterized Pipeline (`pipelines/parameterized.yml`)

The parameterized pipeline allows you to choose which environment to plan/apply:
- **`environment` Parameter**: Choose `dev` or `prod` from dropdown at runtime.
- **Dynamic Working Directory**: Sets `workingDirectory` to `$(System.DefaultWorkingDirectory)/environments/${{ parameters.environment }}`.
- **Dynamic Remote State Key**: Stores state in `tfstate` container under `${{ parameters.environment }}.terraform.tfstate`.
- **Quality & Security Stages**: Runs TFLint, tfsec, and Checkov with togglable parameters.
- **Manual Validation Gate**: Approvers receive approval request before apply.
- **Apply Stage**: Executes apply in the selected environment.
