# Policy Variable Setup Using Terraform

## Objective

The objective of this task is to automate the creation of an AWS IAM Policy named `iampolicy_james` using Terraform. The policy name is stored in a variable `KKE_iampolicy` in variables.tf, and the policy grants EC2 and S3 read permissions. This task demonstrates Terraform-based IAM policy management and variable referencing best practices.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- IAM permissions for policy creation

## Configuration

| Parameter | Variable | Value |
|-----------|----------|-------|
| **IAM Policy Name** | `KKE_iampolicy` | `iampolicy_james` |
| **EC2 Permissions** | - | `ec2:Describe*` |
| **S3 Permissions** | - | `s3:ListAllMyBuckets` |
| **Region** | - | `us-east-1` |

## Directory Structure

```
Policy Variable Setup Using Terraform/
├── main.tf
├── variables.tf
├── README.md
└── Task.png
```

## Variables

**variables.tf:**
- `KKE_iampolicy` - IAM policy name variable

**main.tf:**
- Uses variable for IAM policy name
- Defines policy with EC2 and S3 read permissions
- Creates IAM policy with proper tagging

## Steps

1. **Run Terraform commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

2. **Verify IAM policy creation:**
   ```bash
   aws iam get-policy --policy-arn arn:aws:iam::<account-id>:policy/iampolicy_james
   ```

## Files

- `main.tf` - IAM policy resource with permissions and variable usage
- `variables.tf` - Variable definition for modular design
- `Task.png` - Task description image

## Result

IAM Policy `iampolicy_james` is created with EC2 and S3 read permissions using modular variable configuration.