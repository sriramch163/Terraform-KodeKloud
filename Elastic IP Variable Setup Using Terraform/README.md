# Elastic IP Variable Setup Using Terraform

## Objective

The objective of this task is to allocate an AWS Elastic IP using Terraform, with the name `devops-eip` stored in a variable `KKE_eip`. This configuration follows best practices by separating variable values into a variables.tf file and referencing them in the main Terraform script.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- EC2 permissions for Elastic IP allocation

## Configuration

| Parameter | Variable | Value |
|-----------|----------|-------|
| **Elastic IP Name** | `KKE_eip` | `devops-eip` |

## Directory Structure

```
Elastic IP Variable Setup Using Terraform/
├── main.tf
├── variables.tf
├── README.md
└── Task.png
```

## Variables

**variables.tf:**
- `KKE_eip` - Elastic IP name variable

**main.tf:**
- Uses variable for EIP name tag
- Allocates Elastic IP resource

## Steps

1. **Run Terraform commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

2. **Verify Elastic IP allocation:**
   ```bash
   aws ec2 describe-addresses --filters "Name=tag:Name,Values=devops-eip"
   ```

## Files

- `main.tf` - Elastic IP resource configuration using variables
- `variables.tf` - Variable definition following best practices
- `Task.png` - Task description image

## Result

Elastic IP `devops-eip` is allocated using modular variable configuration for maintainability.