# Role Variable Setup Using Terraform

## Objective

The objective of this task is to automate the creation of an AWS IAM Role named `iamrole_mark` using Terraform. The role name is stored in a variable `KKE_iamrole` within variables.tf, and a trust policy is defined to allow EC2 instances to assume this role. This setup demonstrates proper variable usage and IAM role provisioning automation with Terraform.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- IAM permissions for role creation

## Configuration

| Parameter | Variable | Value |
|-----------|----------|-------|
| **IAM Role Name** | `KKE_iamrole` | `iamrole_mark` |
| **Trust Policy** | EC2 Service | `ec2.amazonaws.com` |
| **Region** | - | `us-east-1` |

## Directory Structure

```
Role Variable Setup Using Terraform/
├── main.tf
├── variables.tf
├── README.md
└── Task.png
```

## Variables

**variables.tf:**
- `KKE_iamrole` - IAM role name variable

**main.tf:**
- Uses variable for IAM role name
- Defines trust policy for EC2 service
- Creates IAM role with proper tagging

## Steps

1. **Run Terraform commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

2. **Verify IAM role creation:**
   ```bash
   aws iam get-role --role-name iamrole_mark
   ```

## Files

- `main.tf` - IAM role resource with trust policy and variable usage
- `variables.tf` - Variable definition for modular design
- `Task.png` - Task description image

## Result

IAM Role `iamrole_mark` is created with EC2 trust policy using modular variable configuration.