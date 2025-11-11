# Change Instance Type Using Terraform

## Objective

Update the EC2 instance `xfusion-ec2` instance type from `t2.micro` to `t2.nano` using Terraform and ensure the instance remains in a running state after the update.

## Architecture

This Terraform configuration:
- Manages an EC2 instance with configurable instance type
- Updates instance type through Terraform state management
- Maintains instance availability during the change
- Preserves all other instance configurations

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- AWS provider configured
- EC2 permissions for instance management
- Existing EC2 instance or initial deployment

## Configuration Details

### EC2 Instance Specifications

| Parameter | Value | Description |
|-----------|-------|-------------|
| **Instance Name** | `xfusion-ec2` | EC2 instance identifier |
| **AMI ID** | `ami-0c101f26f147fa7fd` | Amazon Machine Image |
| **Instance Type** | `t2.nano` | Updated instance size |
| **Security Group** | `sg-b64c2bba4be71aecb` | Network security configuration |

### Instance Type Comparison

| Specification | t2.micro | t2.nano |
|---------------|----------|---------|
| **vCPUs** | 1 | 1 |
| **Memory** | 1 GiB | 0.5 GiB |
| **Network Performance** | Low to Moderate | Low |
| **Cost** | Higher | Lower |

## Usage

### Initial Deployment (if needed)
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

### Updating Instance Type
1. **Modify the instance_type** in main.tf (already updated to t2.nano)

2. **Plan the change**
   ```bash
   terraform plan
   ```

3. **Apply the update**
   ```bash
   terraform apply
   ```

4. **Verify the change**
   - Check AWS EC2 console
   - Instance should show t2.nano type
   - Instance should be in "running" state

## Change Process

When updating instance type, Terraform will:
1. **Stop** the instance gracefully
2. **Modify** the instance type attribute
3. **Start** the instance with new specifications
4. **Verify** the instance reaches running state

## Downtime Considerations

- **Brief downtime** occurs during the instance type change
- **Data persistence** - EBS volumes remain attached
- **IP addresses** - Private IP preserved, public IP may change
- **State preservation** - Instance maintains its configuration

## Monitoring the Change

Check instance status:
```bash
aws ec2 describe-instances --instance-ids <instance-id> --query "Reservations[0].Instances[0].State.Name"
```

View instance type:
```bash
aws ec2 describe-instances --instance-ids <instance-id> --query "Reservations[0].Instances[0].InstanceType"
```

## Files

- `main.tf` - Contains EC2 instance resource with updated instance type

## Rollback Process

To revert to t2.micro:
1. Change `instance_type = "t2.micro"` in main.tf
2. Run `terraform plan` to review changes
3. Run `terraform apply` to implement rollback

## Best Practices

- **Test changes** in non-production environments first
- **Monitor performance** after instance type changes
- **Backup data** before making infrastructure changes
- **Review costs** associated with different instance types
- **Plan maintenance windows** for production changes

## Troubleshooting

If instance fails to start:
- Check CloudWatch logs for boot errors
- Verify AMI compatibility with instance type
- Ensure security groups allow necessary traffic
- Review subnet and VPC configuration

## Cleanup

To remove the instance:
```bash
terraform destroy
```

## Next Steps

Consider:
- Implementing auto-scaling for dynamic sizing
- Using placement groups for performance
- Adding monitoring and alerting
- Configuring backup strategies