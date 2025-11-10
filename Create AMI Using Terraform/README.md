# Create AMI Using Terraform

## 🎯 Objective

Automate the creation of an Amazon Machine Image (AMI) from an existing EC2 instance named `nautilus-ec2` using Terraform. This ensures that the instance's configuration and data are captured as a reusable image (`nautilus-ec2-ami`), enabling consistent deployment and simplifying the migration of infrastructure to AWS in future stages.

## 📋 Overview

This project demonstrates the automation of AMI creation from an existing EC2 instance using Terraform Infrastructure as Code (IaC). The configuration captures the current state of a running instance and creates a custom AMI that can be used for launching identical instances, ensuring consistency across deployments and facilitating infrastructure migration.

## 🏗️ Architecture

- **Source Instance**: Existing EC2 instance named `nautilus-ec2`
- **Target AMI**: Custom AMI named `nautilus-ec2-ami`
- **Image Type**: EBS-backed AMI
- **Snapshot**: Automatic EBS volume snapshots included
- **Replication**: AMI available for launching new instances
- **State Management**: Terraform-managed AMI lifecycle

## 📁 Directory Structure

```
Create AMI Using Terraform/
├── main.tf          # Main Terraform configuration
├── README.md        # Project documentation
└── Task.png         # Task reference image
```

## 🔧 Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- Existing EC2 instance named `nautilus-ec2` in running state
- AWS account with AMI creation permissions
- Sufficient EBS snapshot storage quota

## 🚀 Usage

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Validate configuration**:
   ```bash
   terraform validate
   ```

3. **Plan the deployment**:
   ```bash
   terraform plan
   ```

4. **Apply the configuration**:
   ```bash
   terraform apply
   ```

5. **View AMI details**:
   ```bash
   terraform show
   ```

6. **Get AMI outputs**:
   ```bash
   terraform output
   ```

7. **Clean up resources**:
   ```bash
   terraform destroy
   ```

## 📊 Expected Outputs

After successful deployment, you will have:
- Custom AMI named "nautilus-ec2-ami" created from source instance
- EBS snapshots of all attached volumes
- AMI available in AWS AMI catalog
- AMI ID for launching new instances
- Preserved instance configuration and installed software

## 💡 Key Features

- **Automated AMI Creation**: Creates AMI from existing instance without manual intervention
- **Configuration Preservation**: Captures complete instance state including installed software
- **EBS Snapshot Integration**: Automatically creates snapshots of all attached volumes
- **Reusable Image**: AMI can be used to launch identical instances
- **Infrastructure Migration**: Facilitates moving workloads between environments
- **Version Control**: Terraform manages AMI lifecycle and versioning

## 🔍 Verification

To verify the AMI creation:
1. **AWS Console**: Navigate to EC2 → AMIs
2. **AMI Name**: Look for "nautilus-ec2-ami" in the Name field
3. **AMI State**: Confirm status shows "available"
4. **Source Instance**: Verify source instance ID matches `nautilus-ec2`
5. **Snapshots**: Check EC2 → Snapshots for associated EBS snapshots
6. **Architecture**: Confirm AMI architecture matches source instance

## 🚀 Using the Created AMI

To launch instances from the created AMI:
1. **Get AMI ID**: Use `terraform output ami_id`
2. **Launch Instance**: Reference AMI ID in new EC2 instance configuration
3. **Instance Type**: Choose appropriate instance type for your needs
4. **Key Pair**: Assign SSH key pair for access
5. **Security Groups**: Configure network access rules

Example usage in Terraform:
```hcl
resource "aws_instance" "from_custom_ami" {
  ami           = data.terraform_remote_state.ami.outputs.ami_id
  instance_type = "t2.micro"
  key_name      = "your-key-pair"
}
```

## ⚠️ Important Notes

- Source instance `nautilus-ec2` must be in running or stopped state
- AMI creation process may take several minutes to complete
- EBS snapshots will incur storage costs
- AMI is region-specific and cannot be used across regions without copying
- Ensure source instance has proper configuration before AMI creation
- Consider stopping the instance before AMI creation for data consistency

## 🔄 AMI Management

Best practices for AMI management:
- **Naming Convention**: Use descriptive names with version numbers
- **Documentation**: Tag AMIs with creation date and purpose
- **Lifecycle**: Regularly clean up old AMIs to reduce costs
- **Security**: Keep AMIs updated with latest security patches
- **Backup**: AMIs serve as point-in-time backups of instances

## 🧹 Cleanup

When AMI is no longer needed, run `terraform destroy` to remove:
- Custom AMI `nautilus-ec2-ami`
- Associated EBS snapshots
- All Terraform-managed AMI resources

**Note**: Destroying the AMI will make it unavailable for launching new instances. Ensure no running instances depend on this AMI before cleanup.

## 💰 Cost Considerations

- **EBS Snapshots**: Storage costs for underlying snapshots
- **AMI Storage**: No additional cost for AMI itself
- **Data Transfer**: Costs may apply when copying AMIs across regions
- **Instance Hours**: No cost for stored AMI, only when launching instances