# CloudFormation Template Deployment Using Terraform

## Objective

The objective of this task is to create an AWS CloudFormation stack named `devops-stack` using Terraform. The CloudFormation stack should include an S3 bucket named `devops-bucket-27345` as a resource, with versioning enabled. This task helps automate S3 provisioning via CloudFormation through Terraform for infrastructure-as-code consistency.

## Architecture

This Terraform configuration creates:
- A CloudFormation stack managed by Terraform
- An S3 bucket with versioning enabled via CloudFormation
- Multi-layered infrastructure-as-code approach
- Consistent resource provisioning across tools

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- AWS provider configured
- CloudFormation and S3 permissions

## Configuration Details

### CloudFormation Stack Specifications

| Parameter | Value | Description |
|-----------|-------|-------------|
| **Stack Name** | `devops-stack` | CloudFormation stack identifier |
| **Template Format** | `2010-09-09` | CloudFormation template version |
| **Resource Type** | `AWS::S3::Bucket` | S3 bucket resource |
| **Bucket Name** | `devops-bucket-27345` | Unique S3 bucket identifier |
| **Versioning** | `Enabled` | Object versioning configuration |

### Template Structure

The CloudFormation template includes:
- **AWSTemplateFormatVersion** - Template format specification
- **Description** - Stack purpose documentation
- **Resources** - S3 bucket with versioning enabled

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

4. **Verify the resources**
   - Check AWS CloudFormation console for the stack
   - Check AWS S3 console for the bucket
   - Verify versioning is enabled on the bucket

## Multi-Tool Benefits

**Terraform + CloudFormation advantages:**
- **Flexibility** - Use best tool for each resource type
- **Consistency** - Maintain infrastructure-as-code practices
- **Integration** - Leverage existing CloudFormation templates
- **Management** - Single Terraform state for all resources

## S3 Bucket Features

With versioning enabled:
- **Object History** - Multiple versions of the same object
- **Data Protection** - Recover from accidental deletions
- **Change Tracking** - Monitor object modifications
- **Rollback Capability** - Restore previous versions

## Monitoring Stack Status

Check stack status using:
```bash
aws cloudformation describe-stacks --stack-name devops-stack
```

View stack resources:
```bash
aws cloudformation describe-stack-resources --stack-name devops-stack
```

## Template Customization

The inline CloudFormation template can be extended with:
- Additional S3 bucket properties
- Multiple resources in the same stack
- Parameters for dynamic values
- Outputs for resource references

## Files

- `main.tf` - Contains CloudFormation stack resource with inline template

## Use Cases

Perfect for:
- Migrating existing CloudFormation templates to Terraform management
- Leveraging CloudFormation-specific features
- Maintaining consistency across deployment tools
- Gradual infrastructure modernization

## Cleanup

To remove the stack and all resources:
```bash
terraform destroy
```

This will delete:
- The CloudFormation stack
- The S3 bucket (must be empty)
- All associated resources

## Next Steps

Consider:
- Externalizing the CloudFormation template to a separate file
- Adding parameters for dynamic bucket naming
- Including additional AWS resources in the stack
- Implementing stack outputs for resource references