# Attach Elastic IP Using Terraform

## Objective

The Nautilus DevOps team needs to attach an existing Elastic IP (`nautilus-ec2-eip`) to an existing EC2 instance (`nautilus-ec2`) in the us-east-1 region using Terraform. The configuration should be applied in the working directory `/home/bob/terraform` by updating the main.tf file only.

## Architecture

This Terraform configuration creates:
- An EC2 instance with specified network configuration
- An Elastic IP address for static public IP assignment
- An EIP association linking the instance and Elastic IP
- Persistent public IP connectivity for the instance

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- AWS provider configured for us-east-1 region
- EC2 and VPC permissions for resource management

## Configuration Details

### Resource Specifications

| Resource | Name | Description |
|----------|------|-------------|
| **EC2 Instance** | `nautilus-ec2` | Target instance for EIP attachment |
| **Elastic IP** | `nautilus-ec2-eip` | Static public IP address |
| **EIP Association** | `eip_assoc` | Links instance and Elastic IP |

### Instance Configuration

| Parameter | Value | Description |
|-----------|-------|-------------|
| **AMI ID** | `ami-0c101f26f147fa7fd` | Amazon Machine Image |
| **Instance Type** | `t2.micro` | Instance size specification |
| **Subnet** | `subnet-1db126132150c88f6` | VPC subnet placement |
| **Security Group** | `sg-212d90f0abce47519` | Network security rules |

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
   - Check AWS EC2 console
   - Instance should show the attached Elastic IP
   - EIP should be in "associated" state

## Elastic IP Benefits

- **Static Public IP** - IP address doesn't change on instance restart
- **High Availability** - Quickly reassign to different instances
- **DNS Consistency** - Maintain consistent external connectivity
- **Cost Efficiency** - Pay only when not associated with running instance

## Resource Dependencies

The configuration creates resources in this order:
1. **EC2 Instance** - Base compute resource
2. **Elastic IP** - Static IP allocation
3. **EIP Association** - Links instance and EIP

## Verification Commands

Check instance public IP:
```bash
aws ec2 describe-instances --instance-ids <instance-id> --query "Reservations[0].Instances[0].PublicIpAddress"
```

Check EIP association:
```bash
aws ec2 describe-addresses --allocation-ids <allocation-id>
```

## Network Configuration

- **VPC Subnet** - Instance placed in specified subnet
- **Security Group** - Controls inbound/outbound traffic
- **Public IP** - Elastic IP provides internet connectivity
- **Private IP** - Assigned within subnet CIDR range

## Files

- `main.tf` - Contains EC2 instance, EIP, and association resources

## Cost Considerations

- **EC2 Instance** - Charged per hour while running
- **Elastic IP** - Free when associated with running instance
- **Unassociated EIP** - Charged hourly when not attached
- **Data Transfer** - Standard AWS data transfer rates apply

## Troubleshooting

Common issues:
- **Association fails** - Check instance state (must be running)
- **Network connectivity** - Verify security group rules
- **Subnet issues** - Ensure subnet has internet gateway route
- **Permission errors** - Verify IAM permissions for EIP operations

## Cleanup

To remove all resources:
```bash
terraform destroy
```

**Note**: EIP will be released and may not be recoverable.

## Best Practices

- **Tag resources** for better organization and cost tracking
- **Monitor usage** to avoid unnecessary EIP charges
- **Document associations** for team awareness
- **Plan for disaster recovery** with EIP reassignment procedures

## Next Steps

Consider adding:
- Multiple availability zones for high availability
- Load balancer for traffic distribution
- Auto Scaling groups for dynamic scaling
- CloudWatch monitoring for instance health