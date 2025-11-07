# Create VPC with IPv6 Using Terraform

## 🎯 Objective

Create a VPC named datacenter-vpc in the us-east-1 AWS region using Terraform.
The VPC should include the Amazon-provided IPv6 CIDR block while maintaining a valid IPv4 CIDR configuration.

## Directory Structure

```
Create VPC with IPv6 Using Terraform/
├── main.tf          # Terraform configuration for VPC with IPv6
├── Task.png         # Task requirements image
└── README.md        # Project documentation
```

## Implementation

The Terraform configuration is implemented in `main.tf` and creates:
- AWS VPC with IPv4 CIDR block (10.0.0.0/16)
- Amazon-provided IPv6 CIDR block assignment
- Proper resource tagging with name "datacenter-vpc"

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Plan the deployment:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

4. Clean up resources:
   ```bash
   terraform destroy
   ```