# Create IAM Policy Using Terraform

## Objective

The objective of this task is to create an IAM policy named `iampolicy_yousuf` in the us-east-1 region using Terraform. This policy must grant read-only access to EC2 resources, allowing users to view EC2 instances, AMIs, and snapshots, but not make any modifications.

## Architecture

This Terraform configuration creates:
- A custom IAM policy with EC2 read-only permissions
- JSON-based policy document for fine-grained access control
- Secure read-only access without modification capabilities

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- AWS provider configured for us-east-1 region
- IAM permissions to create policies

## Configuration Details

### IAM Policy Specifications

| Parameter | Value | Description |
|-----------|-------|-------------|
| **Policy Name** | `iampolicy_yousuf` | Unique IAM policy identifier |
| **Description** | `Read-only access to EC2 resources` | Policy purpose description |
| **Actions** | `ec2:Describe*` | All EC2 describe operations |
| **Effect** | `Allow` | Grants specified permissions |
| **Resource** | `*` | All EC2 resources |
| **Version** | `2012-10-17` | IAM policy language version |

### Permissions Granted

The policy allows users to:
- View EC2 instances and their details
- List and describe AMIs (Amazon Machine Images)
- View EBS snapshots and volumes
- Describe security groups and key pairs
- View VPC and networking information
- Access all other EC2 describe operations

### Permissions Denied

Users **cannot**:
- Create, modify, or delete EC2 instances
- Start, stop, or reboot instances
- Create or delete AMIs or snapshots
- Modify security groups or networking
- Perform any write operations on EC2 resources

## Usage

1. **Initialize Terraform**
   ```bash
   terraform init
   ```

2. **Plan the deployment**
   ```bash
   terraform plan
   ```

3. **Apply the configuration**
   ```bash
   terraform apply
   ```

4. **Verify the policy**
   - Check AWS IAM console
   - Policy should appear in Policies list

## Policy Document

The policy uses the `ec2:Describe*` action which includes all EC2 describe operations while maintaining read-only access.

## Security Benefits

- **Principle of Least Privilege** - Only grants necessary read permissions
- **No Modification Risk** - Users cannot alter EC2 resources
- **Comprehensive Visibility** - Full read access to EC2 information
- **Audit-Friendly** - Clear separation of read vs write access

## Files

- `main.tf` - Contains IAM policy resource with JSON policy document

## Usage with Users/Groups

After creation, attach this policy to:
- IAM users who need EC2 visibility
- IAM groups for role-based access
- IAM roles for service-to-service access

## Cleanup

To remove the IAM policy:
```bash
terraform destroy
```

**Note**: Detach policy from all users, groups, and roles before deletion.