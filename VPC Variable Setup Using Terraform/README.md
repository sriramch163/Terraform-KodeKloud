# VPC Variable Setup Using Terraform

## Objective

The objective of this task is to create an AWS VPC named `xfusion-vpc` with a CIDR block of `10.0.0.0/16`, using Terraform. The VPC name should be stored in a variable called `KKE_vpc`, and configuration values should be managed through a variables.tf file to maintain modularity and reusability.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- VPC permissions for creation

## Configuration

| Parameter | Variable | Value |
|-----------|----------|-------|
| **VPC Name** | `KKE_vpc` | `xfusion-vpc` |
| **CIDR Block** | `vpc_cidr` | `10.0.0.0/16` |

## Directory Structure

```
VPC Variable Setup Using Terraform/
├── main.tf
├── variables.tf
├── README.md
└── Task.png
```

## Variables

**variables.tf:**
- `KKE_vpc` - VPC name variable
- `vpc_cidr` - CIDR block variable

**main.tf:**
- Uses variables for VPC configuration
- Creates VPC with specified name and CIDR

## Steps

1. **Run Terraform commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

2. **Verify VPC creation:**
   ```bash
   aws ec2 describe-vpcs --filters "Name=tag:Name,Values=xfusion-vpc"
   ```

## Files

- `main.tf` - VPC resource configuration using variables
- `variables.tf` - Variable definitions for modularity
- `Task.png` - Task description image

## Result

VPC `xfusion-vpc` is created with CIDR `10.0.0.0/16` using modular variable configuration.