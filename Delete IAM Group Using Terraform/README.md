# Delete IAM Group Using Terraform

## Objective

The objective of this task is to delete the IAM group named `iamgroup_ravi` using Terraform as part of the AWS cleanup process. This ensures removal of unused IAM resources while maintaining the Terraform provisioning code for future reuse, contributing to a more optimized and organized AWS environment.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed and initialized
- Existing Terraform state with IAM group
- IAM permissions for group deletion

## Configuration

| Parameter | Value |
|-----------|-------|
| **IAM Group Name** | `iamgroup_ravi` |
| **Operation** | Targeted deletion |

## Directory Structure

```
Delete IAM Group Using Terraform/
├── cmd - 1.png
├── cmd - 2.png
├── cmd - 3.png
├── cmd - 4.png
├── cmds.txt
├── README.md
└── Task.png
```

## Steps

1. **List current resources:**
   ```bash
   terraform state list
   ```

2. **Delete specific IAM group:**
   ```bash
   terraform destroy -target=aws_iam_group.this
   ```

## Commands Reference

All commands are documented in `cmds.txt` for reference.

## Files

- `cmds.txt` - Command sequence for IAM group deletion
- `cmd - *.png` - Step-by-step command screenshots
- `Task.png` - Task description image

## Result

IAM group `iamgroup_ravi` is deleted while preserving Terraform configuration files for future use.