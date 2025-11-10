# Create IAM User Using Terraform

## Objective

The objective of this task is to create an IAM user named `iamuser_mark` using Terraform. IAM (Identity and Access Management) helps manage secure access to AWS services, and this task ensures proper user identity setup as part of the Nautilus DevOps team's AWS infrastructure configuration.

## Architecture

This Terraform configuration creates:
- A basic IAM user with no initial permissions
- Proper tagging for resource identification
- Foundation for future access management

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- AWS provider configured
- IAM permissions to create users

## Configuration Details

### IAM User Specifications

| Parameter | Value | Description |
|-----------|-------|-------------|
| **User Name** | `iamuser_mark` | Unique IAM user identifier |
| **Resource Name** | `mark` | Terraform resource reference |
| **Tags** | `name: iamuser_mark` | Resource identification tag |

### Resources Created

1. **IAM User** - Basic user identity without permissions

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

4. **Verify the user**
   - Check AWS IAM console
   - User should appear in Users list

## Post-Creation Steps

After creating the user, you may need to:
- Attach IAM policies for permissions
- Create access keys for programmatic access
- Set up console password for web access
- Add user to IAM groups

## Security Considerations

- User is created with no permissions (secure by default)
- Additional policies must be explicitly attached
- Follow principle of least privilege
- Regular access review recommended

## Files

- `main.tf` - Contains IAM user resource configuration

## Cleanup

To remove the IAM user:
```bash
terraform destroy
```

**Note**: Ensure user has no attached policies or access keys before deletion.

## Next Steps

Consider adding:
- IAM policies for specific permissions
- Access keys for programmatic access
- Group membership for role-based access