# Attach Policy Using Terraform

## Objective

The Nautilus DevOps team needs to attach an existing IAM policy (`iampolicy_jim`) to an existing IAM user (`iamuser_jim`) in AWS using Terraform. This configuration should be added to the existing main.tf file in the directory `/home/bob/terraform`.

## Architecture

This Terraform configuration creates:
- An IAM user for access management
- An IAM policy with EC2 read permissions
- A policy attachment linking the user and policy
- Secure access control for AWS resources

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- AWS provider configured
- IAM permissions for user and policy management

## Configuration Details

### Resource Specifications

| Resource | Name | Description |
|----------|------|-------------|
| **IAM User** | `iamuser_jim` | Target user for policy attachment |
| **IAM Policy** | `iampolicy_jim` | EC2 read-only access policy |
| **Policy Attachment** | `attach` | Links user and policy |

### Policy Permissions

| Permission | Action | Resource |
|------------|--------|----------|
| **EC2 Read** | `ec2:Read*` | All EC2 resources |

The policy grants read-only access to all EC2 resources, allowing the user to:
- View EC2 instances and their details
- List AMIs, snapshots, and volumes
- Describe security groups and key pairs
- Access VPC and networking information

## Usage

1. **Navigate to working directory**
   ```bash
   cd /home/bob/terraform
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Plan the deployment**
   ```bash
   terraform plan
   ```

4. **Apply the configuration**
   ```bash
   terraform apply
   ```

5. **Verify the attachment**
   - Check AWS IAM console
   - User should show attached policy
   - Policy should be listed under user permissions

## Policy Attachment Benefits

- **Granular Permissions** - Specific access control for resources
- **Centralized Management** - Policy can be attached to multiple users
- **Security Compliance** - Principle of least privilege
- **Audit Trail** - CloudTrail logs policy usage

## Verification Commands

Check user policies:
```bash
aws iam list-attached-user-policies --user-name iamuser_jim
```

Get policy details:
```bash
aws iam get-policy --policy-arn <policy-arn>
```

Test user permissions:
```bash
aws ec2 describe-instances --profile jim-user
```

## Resource Dependencies

The configuration creates resources in this order:
1. **IAM User** - Base identity resource
2. **IAM Policy** - Permission definition
3. **Policy Attachment** - Links user and policy

## Security Considerations

- **Read-Only Access** - User cannot modify EC2 resources
- **Scoped Permissions** - Limited to EC2 service only
- **No Administrative Rights** - Cannot manage IAM or other services
- **Audit Logging** - All actions logged via CloudTrail

## Files

- `main.tf` - Contains IAM user, policy, and attachment resources

## Policy Document Structure

The policy uses JSON format:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["ec2:Read*"],
      "Resource": "*"
    }
  ]
}
```

## Troubleshooting

Common issues:
- **Attachment fails** - Check user and policy exist
- **Permission denied** - Verify IAM permissions for attachment
- **Policy not found** - Ensure policy ARN is correct
- **User access issues** - Check policy permissions and syntax

## Cleanup

To remove all resources:
```bash
terraform destroy
```

**Note**: Policy attachment will be removed before deleting user and policy.

## Best Practices

- **Principle of Least Privilege** - Grant minimal required permissions
- **Regular Audits** - Review attached policies periodically
- **Policy Versioning** - Use managed policies for updates
- **Documentation** - Maintain clear policy descriptions

## Next Steps

Consider adding:
- Additional policies for other AWS services
- Group-based policy management
- Conditional access policies
- Multi-factor authentication requirements